//
//  HypoDialogView.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/14/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class HypoDialogView: SpringView {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var frontView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var frontIsHidden = true
    
    var iOS7Hide = false
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override var hidden : Bool{
        
        didSet {
            
            if !hidden {
                //NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: "hideFrontView:", userInfo: nil, repeats: false)
                if let b = self.button {
                    self.button.transform = CGAffineTransformMakeRotation( CGFloat((M_PI * -1) / 2))
                }
                
                if let v = self.frontView {
                    
                    if (UIDevice.currentDevice().systemVersion as NSString).floatValue < 8.0 {
                        if !iOS7Hide {
                            self.frontView.frame.origin.y = self.frontView.frame.origin.y - 350.0
                            iOS7Hide = true
                        }
                        
                    } else {
                        self.frontView.transform = CGAffineTransformMakeTranslation(0.0, -350.0)
                    }
                    
                }
                
                frontIsHidden = true
                
            } else {
                //NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: "hideFrontView:", userInfo: nil, repeats: false)
            }
        }
    }
    
    func load () {
        self.layer.shadowColor = UIColor.blackColor().CGColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 10.0
        
        self.button.transform = CGAffineTransformMakeRotation( CGFloat((M_PI * -1) / 2))
        self.frontView.transform = CGAffineTransformMakeTranslation(0.0, -350.0)
    }

    @IBAction func click(sender: AnyObject) {
        println(self.frontIsHidden)
        
        if self.frontIsHidden {
           
            self.frontIsHidden = false
            self.showFrontView(nil)
            
        } else {
            
            self.frontIsHidden = true
            self.hideFrontView(nil)
            
        }
        
    }
    
    func startAnimation () {
        self.hidden = false
        self.animation = "squeezeRight"
        self.animate()
    }
    
    func showFrontView (sender : AnyObject?) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.button.transform = CGAffineTransformMakeRotation(0.0)
            
            if (UIDevice.currentDevice().systemVersion as NSString).floatValue < 8.0 {
                if self.iOS7Hide {
                    self.frontView.frame.origin.y = self.frontView.frame.origin.y + 350.0
                    self.iOS7Hide = false
                }
                
            } else {
                self.frontView.transform = CGAffineTransformMakeTranslation(0.0, 0.0)
            }
            
            }) { (Bool) -> Void in
                
                // println("Finished!")
        }
        
    }
    
    func hideFrontView (sender : AnyObject?) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.button.transform = CGAffineTransformMakeRotation( CGFloat((M_PI * -1) / 2))
            
            if (UIDevice.currentDevice().systemVersion as NSString).floatValue < 8.0 {
                if !self.iOS7Hide {
                    self.frontView.frame.origin.y = self.frontView.frame.origin.y - 350.0
                    self.iOS7Hide = true
                }
                
            } else {
                self.frontView.transform = CGAffineTransformMakeTranslation(0.0, -350.0)
            }
            
            }) { (Bool) -> Void in
                
                // println("Finished!")
        }
        
    }
}
