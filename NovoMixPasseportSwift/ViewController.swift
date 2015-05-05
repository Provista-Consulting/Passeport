//
//  ViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/12/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sommaireView = SommaireView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))

    @IBOutlet weak var simulationButton: UIBarButtonItem!
    @IBOutlet weak var sommaireButton: UIBarButtonItem!
    @IBOutlet weak var showHideButton: ShowHideButton!
    @IBOutlet weak var buttonsContainer: UIView!
    
    var buttonsContainerShow = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createNavigationStyle ()
        self.createViews()
        
        /* Buttons container */
        
        self.buttonsContainer.transform = CGAffineTransformMakeTranslation(215.0, 0.0)
        self.sommaireView.hidden = true
        self.view.addSubview(self.sommaireView)
        
        /* Actions */
        self.sommaireView.buttonFlexPen.addTarget(self, action: "showFlexPenVC:", forControlEvents: UIControlEvents.TouchUpInside)
        self.sommaireView.buttonAdapteDose.addTarget(self, action: "showAdapteDoseVC:", forControlEvents: UIControlEvents.TouchUpInside)
        self.sommaireView.buttonHypoglycemie.addTarget(self, action: "showHypoglycemieVC:", forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: - Actions
    
    @IBAction func showFlexPenVC (sender: AnyObject!) {
        
        var storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc : FlexPenViewController = storyboard.instantiateViewControllerWithIdentifier("FlexPenVC") as! FlexPenViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showAdapteDoseVC (sender: AnyObject!) {
        
        var storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc : AdapteDoseViewController = storyboard.instantiateViewControllerWithIdentifier("AdapteDoseVC") as! AdapteDoseViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showHypoglycemieVC (sender: AnyObject!) {
        
        var storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc : HypoglycemieViewController = storyboard.instantiateViewControllerWithIdentifier("HypoglycemieVC") as! HypoglycemieViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
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
    
    @IBAction func showSommaire(sender: AnyObject!) {
        
        if (sender as! UIBarButtonItem).title == "Fermer" {
            
            (sender as! UIBarButtonItem).title = "Sommaire"
            
            self.sommaireView.animation = "fadeOut"
            
            self.sommaireView.animate()
            
        } else {
            self.sommaireView.hidden = false
            self.sommaireView.animation = "fadeIn"
            self.sommaireView.animate()
            (sender as! UIBarButtonItem).title = "Fermer"
        }
        
    }
    
    // MARK: - create views
    
    func createViews() {
        


    }
    
    
    func createNavigationStyle () {
        
        // Create custom label for titleView
        //self.titleLabel.text = "Simulation"
        self.titleLabel.backgroundColor = UIColor.clearColor()
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.textColor = UIColor.blackColor()
        self.titleLabel.textAlignment = .Center
        self.titleLabel.font = UIFont.boldSystemFontOfSize(22.0)
        self.titleLabel.text = "Mon passeport"
        self.navigationItem.titleView = self.titleLabel
        
        
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }

}

