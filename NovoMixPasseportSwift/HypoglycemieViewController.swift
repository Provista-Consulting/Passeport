//
//  HypoglycemieViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/5/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class HypoglycemieViewController: UIViewController {

    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
    
    let titles : [String] = ["Causes\nd’hypoglycémie".uppercaseString, "SYMPTÔMES DÉCELABLES\nPAR VOTRE ENTOURAGE", "SYMPTÔMES\nD’UNE HYPOGLYCÉMIE", "Que faire en cas\nd’hypoglycémie ".uppercaseString]
    
    let titlesBig : [String] = ["Causes d’hypoglycémie".uppercaseString, "SYMPTÔMES DÉCELABLES PAR VOTRE ENTOURAGE", "SYMPTÔMES D’UNE HYPOGLYCÉMIE", "Que faire en cas d’hypoglycémie ".uppercaseString]
    
    @IBOutlet weak var causesArrowButton: UIView!
    @IBOutlet weak var symptomesArrowButton: UIView!
    @IBOutlet weak var symptomes2ArrowButton: UIView!
    @IBOutlet weak var QueFaireArrowButton: UIView!
    
    var causesButton : ArrowButton!
    var symptomesButton : ArrowButton!
    var symptomes2Button : ArrowButton!
    var QueFaireButton : ArrowButton!
    
    // Dialog stuff
    
    var bgDialogView : UIView = UIView()
    var dialogView : HypoDialogView!
    
    var closeDialogButton : UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Causes button
        self.causesButton = NSBundle.mainBundle().loadNibNamed("ArrowButton", owner: self, options: nil)[0] as! ArrowButton
        self.causesButton.labelTitle.text = titles[0]
        self.causesButton.button.tag = 0
        self.causesButton.button.addTarget(self, action: "showDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        self.causesArrowButton.addSubview(self.causesButton)
        
        // symptomes button
        self.symptomesButton = NSBundle.mainBundle().loadNibNamed("ArrowButton", owner: self, options: nil)[0] as! ArrowButton
        self.symptomesButton.labelTitle.text = titles[1]
        self.symptomesButton.button.tag = 1
        self.symptomesButton.button.addTarget(self, action: "showDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        self.symptomesArrowButton.addSubview(self.symptomesButton)
        
        // symptomes2 button
        self.symptomes2Button = NSBundle.mainBundle().loadNibNamed("ArrowButton", owner: self, options: nil)[0] as! ArrowButton
        self.symptomes2Button.labelTitle.text = titles[2]
        self.symptomes2Button.button.tag = 2
        self.symptomes2Button.button.addTarget(self, action: "showDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        self.symptomes2ArrowButton.addSubview(self.symptomes2Button)
        
        // QueFaireButton
        self.QueFaireButton = NSBundle.mainBundle().loadNibNamed("ArrowButton", owner: self, options: nil)[0] as! ArrowButton
        self.QueFaireButton.labelTitle.text = titles[3]
        self.QueFaireButton.button.tag = 3
        self.QueFaireButton.button.addTarget(self, action: "showDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        self.QueFaireArrowButton.addSubview(self.QueFaireButton)
        
        
        self.createNavigationStyle()
        
        // Dialog stuff
        self.bgDialogView.frame = self.view.bounds
        self.bgDialogView.backgroundColor = UIColor.clearColor()
        var bgView = UIControl()
        bgView.frame = self.view.bounds
        bgView.backgroundColor = UIColor.whiteColor()
        bgView.alpha = 0.9
        bgView.addTarget(self, action: "closeDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.bgDialogView.addSubview(bgView)
        
        
        self.dialogView = NSBundle.mainBundle().loadNibNamed("HypoDialogView", owner: self, options: nil)[0] as! HypoDialogView
        self.dialogView.load()
        self.dialogView.center = self.bgDialogView.center
        self.dialogView.backgroundColor = UIColor.clearColor()
        self.bgDialogView.addSubview(self.dialogView)
        //self.dialogView.hidden = true
        
        self.view.addSubview(self.bgDialogView)
        self.bgDialogView.hidden = true
        self.dialogView.hidden = true
        
        self.closeDialogButton = UIBarButtonItem(title: "Fermer", style: UIBarButtonItemStyle.Done, target: self, action: "closeDialog:")
        
    }
    
    func showDialog (sender: AnyObject) {
        
        
        
        println(sender.tag)
        
        for subview in self.dialogView.scrollView.subviews {
            
            subview.removeFromSuperview()
        }
        
        self.dialogView.titleLabel.text = titlesBig[sender.tag]
        self.dialogView.scrollView.contentSize = CGSize(width: 563.0, height: 340.0)
        
        switch sender.tag {
        case 0 :
            let view1 = NSBundle.mainBundle().loadNibNamed("HypoDialogViewSubviews", owner: self, options: nil)[0] as! UIView
            self.dialogView.scrollView.addSubview(view1)
            break
        case 1 :
            let view1 = NSBundle.mainBundle().loadNibNamed("HypoDialogViewSubviews", owner: self, options: nil)[1] as! UIView
            self.dialogView.scrollView.addSubview(view1)
            break
        case 2 :
            let view1 = NSBundle.mainBundle().loadNibNamed("HypoDialogViewSubviews", owner: self, options: nil)[2] as! UIView
            self.dialogView.scrollView.addSubview(view1)
            
            break
        case 3 :
            let view1 = NSBundle.mainBundle().loadNibNamed("HypoDialogViewSubviews", owner: self, options: nil)[3] as! UIView
            var view2 = NSBundle.mainBundle().loadNibNamed("HypoDialogViewSubviews", owner: self, options: nil)[4] as! UIView
            view2.frame.origin.y = 340.0
            
            self.dialogView.scrollView.addSubview(view1)
            self.dialogView.scrollView.addSubview(view2)
            
            self.dialogView.scrollView.contentSize = CGSize(width: 563.0, height: CGFloat(340.0 * 2))
            break
        default :
            break
        }
        
        self.bgDialogView.hidden = false
        self.dialogView.startAnimation()
        
        self.navigationItem.rightBarButtonItem = self.closeDialogButton
        
    }
    
    func closeDialog (sender : AnyObject) {
        self.bgDialogView.hidden = true
        self.dialogView.hidden = true
        
        self.navigationItem.rightBarButtonItem = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createNavigationStyle () {
        
        self.titleLabel.backgroundColor = UIColor.clearColor()
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.textColor = UIColor.blackColor()
        self.titleLabel.textAlignment = .Center
        self.titleLabel.font = UIFont.boldSystemFontOfSize(22.0)
        self.titleLabel.text = "Hypoglycémie : causes & signes"
        self.navigationItem.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }
    
}
