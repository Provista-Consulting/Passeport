//
//  NovoTwistViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/5/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class NovoTwistViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var viewButtonAgiter: UIView!
    @IBOutlet weak var viewButtonPurger: UIView!
    @IBOutlet weak var viewButtonSelectionner: UIView!
    
    var buttonAgiter : buttonMenu!
    var buttonPurger : buttonMenu!
    var buttonSelectionner : buttonMenu!
    
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
    
    var french = true
    
    // Scroll View
    
    @IBOutlet weak var scrollView: UIScrollView!
    var typeDaiguillesSubview : TypeDaiguillesSubview!
    var siteDinjectionSubview : SiteDinjectionSubview!
    var techniqueSubview : TechniqueSubview!
    
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.createNavigationStyle()
        self.scrollView.delegate = self
        
        self.buttonAgiter = NSBundle.mainBundle().loadNibNamed("buttonMenu", owner: self, options: nil)[0] as! buttonMenu
        self.buttonAgiter.active = true
        self.buttonAgiter.labelNumber.text = "1"
        self.buttonAgiter.labelTitle.text = french ? "Type d’aiguilles" : " أنواع الإبر"
        self.buttonAgiter.button.tag = 0
        self.buttonAgiter.button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.viewButtonAgiter.addSubview(self.buttonAgiter)
        
        self.buttonPurger = NSBundle.mainBundle().loadNibNamed("buttonMenu", owner: self, options: nil)[0] as! buttonMenu
        self.buttonPurger.active = false
        self.buttonPurger.labelNumber.text = "2"
        self.buttonPurger.labelTitle.text = french ? "Sites d’injection" : "مواضع حقن الأنسولين"
        self.buttonPurger.button.tag = 1
        self.buttonPurger.button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.viewButtonPurger.addSubview(self.buttonPurger)
        
        self.buttonSelectionner = NSBundle.mainBundle().loadNibNamed("buttonMenu", owner: self, options: nil)[0] as! buttonMenu
        self.buttonSelectionner.active = false
        self.buttonSelectionner.labelNumber.text = "3"
        self.buttonSelectionner.labelTitle.text = french ? "Technique" : "تقنية الحقن"
        self.buttonSelectionner.button.tag = 2
        self.buttonSelectionner.button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.viewButtonSelectionner.addSubview(self.buttonSelectionner)

        
        let arIndex = french ? 0 : 3
        // type d'aiguilles Subview
        
        self.typeDaiguillesSubview = NSBundle.mainBundle().loadNibNamed("NovoTwistSubview", owner: self, options: nil)[0 + arIndex] as! TypeDaiguillesSubview
        //self.typeDaiguillesSubview.load()
        //self.typeDaiguillesSubview.buttonPlayVideo.button.addTarget(self, action: "playVideo:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.scrollView.addSubview(self.typeDaiguillesSubview)
        
        // site d'injection Subview
        
        self.siteDinjectionSubview = NSBundle.mainBundle().loadNibNamed("NovoTwistSubview", owner: self, options: nil)[1 + arIndex] as! SiteDinjectionSubview
        //self.purgerSubview.load()
        //self.purgerSubview.buttonPlayVideo.button.addTarget(self, action: "playVideo:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.siteDinjectionSubview.frame.origin.x = 850.0
        
        self.scrollView.addSubview(self.siteDinjectionSubview)
        
        // Selectionner subview
        
        self.techniqueSubview = NSBundle.mainBundle().loadNibNamed("NovoTwistSubview", owner: self, options: nil)[2 + arIndex] as! TechniqueSubview
//        self.techniqueSubview.load()
//        self.techniqueSubview.buttonPlayVideo.button.addTarget(self, action: "playVideo:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.techniqueSubview.frame.origin.x = 850.0 * 2
        
        self.scrollView.addSubview(self.techniqueSubview)
        
        
        // Scroll view Content size
        
        self.scrollView.contentSize = CGSize(width: CGFloat(850.0 * 3), height: self.scrollView.frame.height)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

    
    func createNavigationStyle () {
        
        self.titleLabel.backgroundColor = UIColor.clearColor()
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.textColor = UIColor.blackColor()
        self.titleLabel.textAlignment = .Center
        self.titleLabel.font = UIFont.boldSystemFontOfSize(22.0)
        self.titleLabel.text = french ? "NovoTwist Aiguilles Novo Nordisk" : "نوفوتويست إبر نوفو نوردسك"
        self.navigationItem.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }

}
