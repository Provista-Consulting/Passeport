//
//  ViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/12/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, ThumbnailDelegate {

    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var pageButton: UIButton!
    @IBOutlet weak var menuScrollView: UIScrollView!
    
    
    @IBOutlet weak var showHideButton: ShowHideButton!
    
    @IBOutlet weak var buttonsContainer: UIView!
    /* helpers */
    
    var currentPage = 0
    var currentPageThumb = 0
    var buttonsContainerShow = false
    var menuShow = false
    
    /* collections */
    
    var thumbnails : [Thumbnail] = []
    var slides : [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
        /* Main Scroll View */
        self.mainScrollView.delegate = self
        
        /* Menu */
        self.menuView.transform = CGAffineTransformMakeTranslation(0.0, 172.0)
        self.pageButton.setTitle("Page \(self.currentPage + 1)", forState:UIControlState.Normal)
        self.pageButton.layer.cornerRadius = 10.0
        self.menuView.layer.cornerRadius = 20.0
        
        self.createViews()
        
        /* Buttons container */
        
        self.buttonsContainer.transform = CGAffineTransformMakeTranslation(215.0, 0.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - scrollView delegate
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        // Get page number
        var pageWidth : CGFloat = self.mainScrollView.frame.size.width
        var page : Int = Int(floor((self.mainScrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1)
        
        if (page != self.currentPage) {
            
            self.currentPage = page
            
            // Set the button title
            println("Page No: \(self.currentPage)")
            
            self.pageButton.setTitle("Page \(self.currentPage + 1)", forState:UIControlState.Normal)
            
            // Select the Menu
            
            var thumbnail = self.thumbnails[self.currentPage] as Thumbnail
            
            self.deselectAllThumbnails()
            
            var frame = self.menuScrollView.frame
            frame.origin.x = thumbnail.frame.origin.x - (208*2)
            frame.origin.y = 0;
            self.menuScrollView.scrollRectToVisible(frame, animated:true)
            
            thumbnail.isSelected = true;
            
            // Hide the menu if it's visible
            
            if (self.menuShow) {
                self.pagebuttonClick(nil)
            }
            
            // Hide the buttons container
            if (self.buttonsContainerShow) {
                self.showHideButtonAction(nil)
            }

        }
        
    }

    // MARK: - Thumbnail delegate
    
    func deselectAllThumbnails() {
        for thumb in self.thumbnails  {
            thumb.isSelected = false
            thumb.layer.borderWidth = 1.0
        }
    }
    
    func updateScrollView() {
        
        var thumbView : Thumbnail!
        
        var page = 0
        
        // Get the page number of the selected thumbnail
        
        for thumb in self.thumbnails {

            if thumb.isSelected {
                page = find(self.thumbnails, thumb)!
            }
        }
        
        thumbView = self.thumbnails[page]
        
        // Go to the selected page
        var frame = self.mainScrollView.frame
        frame.origin.x = CGFloat(1024 * page)
        frame.origin.y = 0
        
        self.mainScrollView.scrollRectToVisible(frame, animated: false)
        
        // Update the current page and the button title
        self.currentPage = page
        self.pageButton.setTitle("Page \(self.currentPage + 1)", forState: UIControlState.Normal)
        
        // Select Menu and center the thumbnail
        var frame2 = self.menuScrollView.frame
        frame2.origin.x = thumbView.frame.origin.x - (208*2)
        frame2.origin.y = 0
        self.menuScrollView.scrollRectToVisible(frame2, animated: true)
        
        // Hide menu if it's visible
        
        if (self.menuShow) {
            self.pagebuttonClick(nil)
        }
        
        // Hide the buttons container
        
        if (self.buttonsContainerShow) {
            self.showHideButtonAction(nil)
        }
        
    }

    
    // MARK: - Actions
    
    @IBAction func pagebuttonClick(sender: AnyObject!) {
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            // Animation
            if (!self.menuShow) {
                self.menuView.transform = CGAffineTransformMakeTranslation(0.0, 0.0)
                
                // Start Button animation
                self.pageButton.transform = CGAffineTransformMakeScale(1.0, 1.2)
                self.pageButton.backgroundColor = UIColor.flatSkyBlueColor()
                
            } else {
                self.menuView.transform = CGAffineTransformMakeTranslation(0.0, 172.0)
                self.pageButton.backgroundColor = UIColor.flatSkyBlueColorDark()
            }
            
            
            }) { (Bool) -> Void in
                // Completion
                
                if (!self.menuShow) {
                    self.menuShow = true
                } else {
                    self.menuShow = false
                    
                }
                
                self.pageButton.setTitle("Page \(self.currentPage + 1)", forState:UIControlState.Normal)
                
                // End Button animation
                self.pageButton.transform = CGAffineTransformMakeScale(1.0, 1.0)
        }

    }
    
    @IBAction func hideMenu(sender : AnyObject!) {
        
        if (self.menuShow) {
            pagebuttonClick(nil)
        }
    }
    
    // MARK: - create views
    
    func createViews() {
        
        /* --------------------- */
        /* Thumbnails Initializers */
        
        for var i = 0; i < Int(SLIDES_NUMBER); i++ {

            // Set frame
            let x = (208 * i) + (10 * (i+1))
            let frame = CGRectMake(CGFloat(x), 10.0, 208.0, 150.0)
            
            var thumb = NSBundle.mainBundle().loadNibNamed("Thumbnail", owner: self, options: nil)[0] as Thumbnail
            thumb.frame = frame
            thumb.setUp()
            thumb.delegate = self
            
            self.thumbnails.append(thumb)
        }
        
        // Add all thumbnails to the mennu scroll view
        
        for thumb in self.thumbnails {
            self.menuScrollView.addSubview(thumb)
        }
        
        let k = (208 + 10) * SLIDES_NUMBER + 10
        let frameMenuScroll = CGRectMake(0.0, 0.0, CGFloat(k), 170.0)
        
        self.menuScrollView.contentSize = frameMenuScroll.size
        
        /* --------------------- */
        /* Slides Initializers */
        
        for var i = 0; i < Int(SLIDES_NUMBER); i++ {
            
            // Set frame
            let x = Int(self.view.frame.size.width) * i
            
            let frame = CGRectMake(CGFloat(x), 0.0, self.view.frame.size.width, self.view.frame.size.height)
            
            let slide = UIControl()
            slide.frame = frame
            
            if (i % 2) > 0 {
                slide.backgroundColor = UIColor.blackColor()
            }
            
            slide.addTarget(self, action: "hideMenu:", forControlEvents: UIControlEvents.TouchUpInside)
            
            self.slides.append(slide)
        }
        
        for slide in self.slides {
            self.mainScrollView.addSubview(slide)
        }
        
        let y = Int(self.view.frame.size.width) * Int(SLIDES_NUMBER)
        let frameScroll = CGRectMake(0.0, 0.0, CGFloat(y), self.view.frame.size.height);
        
        self.mainScrollView.contentSize = frameScroll.size

    }
    
    @IBAction func showHideButtonAction(sender: AnyObject!) {
        
        UIView.animateWithDuration(0.8, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            // Start animation
            
            if (self.buttonsContainerShow) {
                
                self.buttonsContainer.transform = CGAffineTransformMakeTranslation(215.0, 0.0)
                self.buttonsContainerShow = false
                
                
                self.showHideButton.transform = CGAffineTransformMakeRotation(0.0)
                ;
            } else {
                
                self.buttonsContainer.transform = CGAffineTransformMakeTranslation(0.0, 0.0)
                
                self.showHideButton.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                
                self.buttonsContainerShow = true
            }
            
            
            }) { (Bool) -> Void in
                // finish animamation
                
        }        
    }

    @IBAction func goHome(sender: AnyObject!) {
        
        var frame = self.mainScrollView.frame
        frame.origin.x = 0
        frame.origin.y = 0
        self.mainScrollView.scrollRectToVisible(frame, animated: false)
        
        self.scrollViewDidEndDecelerating(self.mainScrollView)
    }
}

