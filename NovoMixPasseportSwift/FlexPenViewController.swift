//
//  FlexPenViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 4/5/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit
import MediaPlayer

class FlexPenViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var viewButtonAgiter: UIView!
    @IBOutlet weak var viewButtonPurger: UIView!
    @IBOutlet weak var viewButtonSelectionner: UIView!
    @IBOutlet weak var viewButtonInjecter: UIView!
    
    var buttonAgiter : buttonMenu!
    var buttonPurger : buttonMenu!
    var buttonSelectionner : buttonMenu!
    var buttonInjecter : buttonMenu!
    
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
    
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    var french = true
    // Scroll View
    
    @IBOutlet weak var scrollView: UIScrollView!
    var agiterSubview : AgiterSubview!
    var purgerSubview : PurgerSubview!
    var selectionnerSubview : SelectionnerSubview!
    var injecterSubview : InjecterSubview!
    
    var currentPage = 0
    
    // Video player
    
    var moviePlayer : MPMoviePlayerController?
    var closeVideoButton : UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.createNavigationStyle()
        self.scrollView.delegate = self
        
        if !french {
            self.leftLabel.text = "قبل كل حقنة"
            self.rightLabel.text = "حقن الأنسولين"
        }
        
        self.buttonAgiter = NSBundle.mainBundle().loadNibNamed("buttonMenu", owner: self, options: nil)[0] as! buttonMenu
        self.buttonAgiter.active = true
        self.buttonAgiter.labelNumber.text = "1"
        self.buttonAgiter.labelTitle.text = french ? "Agiter" : "رج القنينة"
        self.buttonAgiter.button.tag = 0
        self.buttonAgiter.button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.viewButtonAgiter.addSubview(self.buttonAgiter)
        
        self.buttonPurger = NSBundle.mainBundle().loadNibNamed("buttonMenu", owner: self, options: nil)[0] as! buttonMenu
        self.buttonPurger.active = false
        self.buttonPurger.labelNumber.text = "2"
        self.buttonPurger.labelTitle.text = french ? "Purger" : "تنظيف القنينة"
        self.buttonPurger.button.tag = 1
        self.buttonPurger.button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.viewButtonPurger.addSubview(self.buttonPurger)
        
        self.buttonSelectionner = NSBundle.mainBundle().loadNibNamed("buttonMenu", owner: self, options: nil)[0] as! buttonMenu
        self.buttonSelectionner.active = false
        self.buttonSelectionner.labelNumber.text = "3"
        self.buttonSelectionner.labelTitle.text = french ? "Sélectionner" : "الإختيار"
        self.buttonSelectionner.button.tag = 2
        self.buttonSelectionner.button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.viewButtonSelectionner.addSubview(self.buttonSelectionner)
        
        self.buttonInjecter = NSBundle.mainBundle().loadNibNamed("buttonMenu", owner: self, options: nil)[0] as! buttonMenu
        self.buttonInjecter.active = false
        self.buttonInjecter.labelNumber.text = "4"
        self.buttonInjecter.labelTitle.text = french ? "Injecter" : "الحقن"
        self.buttonInjecter.button.tag = 3
        self.buttonInjecter.button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.viewButtonInjecter.addSubview(self.buttonInjecter)
        
        
        let arIndex = french ? 0 : 4
        // Agiter subview
        
        self.agiterSubview = NSBundle.mainBundle().loadNibNamed("FlexPenSubviews", owner: self, options: nil)[0 + arIndex] as! AgiterSubview
        self.agiterSubview.load()
        self.agiterSubview.buttonPlayVideo.button.addTarget(self, action: "playVideo:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.scrollView.addSubview(self.agiterSubview)
        
        // Purger subview
        
        self.purgerSubview = NSBundle.mainBundle().loadNibNamed("FlexPenSubviews", owner: self, options: nil)[1 + arIndex] as! PurgerSubview
        self.purgerSubview.load()
        self.purgerSubview.buttonPlayVideo.button.addTarget(self, action: "playVideo:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.purgerSubview.frame.origin.x = 850.0
        
        self.scrollView.addSubview(self.purgerSubview)
        
        // Selectionner subview
        
        self.selectionnerSubview = NSBundle.mainBundle().loadNibNamed("FlexPenSubviews", owner: self, options: nil)[2 + arIndex] as! SelectionnerSubview
        self.selectionnerSubview.load()
        self.selectionnerSubview.buttonPlayVideo.button.addTarget(self, action: "playVideo:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.selectionnerSubview.frame.origin.x = 850.0 * 2
        
        self.scrollView.addSubview(self.selectionnerSubview)
        
        // Injecter subview
        
        self.injecterSubview = NSBundle.mainBundle().loadNibNamed("FlexPenSubviews", owner: self, options: nil)[3 + arIndex] as! InjecterSubview
        self.injecterSubview.load()
        self.injecterSubview.buttonPlayVideo.button.addTarget(self, action: "playVideo:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.injecterSubview.frame.origin.x = 850.0 * 3
        
        self.scrollView.addSubview(self.injecterSubview)
        
        // Scroll view Content size
        
        self.scrollView.contentSize = CGSize(width: CGFloat(850.0 * 4), height: self.scrollView.frame.height)
        
        // Add stop video bar button
        
        self.closeVideoButton = UIBarButtonItem(title: "Fermer", style: UIBarButtonItemStyle.Done, target: self, action: "closeVideo:")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playVideo (sender: AnyObject!) {
        
        var path = ""
        
        switch sender.tag {
        case 0 :
            path = NSBundle.mainBundle().pathForResource("agiter", ofType:"mp4")!
            break
        case 1 :
            path = NSBundle.mainBundle().pathForResource("purger", ofType:"mp4")!
            break
        case 2 :
            path = NSBundle.mainBundle().pathForResource("selectionner", ofType:"mp4")!
            break
        case 3 :
            path = NSBundle.mainBundle().pathForResource("injecter", ofType:"mp4")!
            break
        default:
            break
        }
        
        let url = NSURL.fileURLWithPath(path)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        if let player = moviePlayer {
            
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFit
            self.view.addSubview(player.view)
            
            self.navigationItem.rightBarButtonItem = self.closeVideoButton
            
        }
    }
    
    func closeVideo (sender: UIBarButtonItem?) {
        
        if let player = moviePlayer {
            
            player.stop()
            player.view.removeFromSuperview()
            self.navigationItem.rightBarButtonItem = nil
            moviePlayer = nil
        }
        
    }
    
    func createNavigationStyle () {
        
        self.titleLabel.backgroundColor = UIColor.clearColor()
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.textColor = UIColor.blackColor()
        self.titleLabel.textAlignment = .Center
        self.titleLabel.font = UIFont.boldSystemFontOfSize(22.0)
        
        if french {
            self.titleLabel.text = "Guide d’utilisation du FlexPen®"
        } else {
            self.titleLabel.text = "دليل استخدام الفلكسبين"
        }
        
        
        self.navigationItem.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        // Get page number
        var pageWidth : CGFloat = self.scrollView.frame.size.width
        var page : Int = Int(floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1)
        
        if (page != self.currentPage) {
            self.currentPage = page
            selectButton()
        }
    }
    
    func selectButton () {
        
        self.buttonAgiter.active = false
        self.buttonPurger.active = false
        self.buttonSelectionner.active = false
        self.buttonInjecter.active = false
        
        switch self.currentPage {
        case 0 :
            self.buttonAgiter.active = true
            break
        case 1 :
            self.buttonPurger.active = true
            break
        case 2 :
            self.buttonSelectionner.active = true
            break
        case 3 :
            self.buttonInjecter.active = true
            break
        default :
            break
        }
        
    }
    
    func click (sender : AnyObject) {
        
        var frame = self.scrollView.frame
        frame.origin.y = 0
        frame.origin.x = self.scrollView.frame.width * CGFloat(sender.tag)
        
        self.scrollView.scrollRectToVisible(frame, animated: false)
        self.scrollViewDidEndDecelerating(self.scrollView)
        
    }
}
