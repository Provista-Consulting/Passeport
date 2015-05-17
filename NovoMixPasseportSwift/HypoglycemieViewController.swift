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
    
    
    @IBOutlet weak var causesArrowButton: UIView!
    @IBOutlet weak var symptomesArrowButton: UIView!
    @IBOutlet weak var symptomes2ArrowButton: UIView!
    @IBOutlet weak var QueFaireArrowButton: UIView!
    
    var causesButton : ArrowButton!
    var symptomesButton : ArrowButton!
    var symptomes2Button : ArrowButton!
    var QueFaireButton : ArrowButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Causes button
        self.causesButton = NSBundle.mainBundle().loadNibNamed("ArrowButton", owner: self, options: nil)[0] as! ArrowButton
        self.causesButton.labelTitle.text = "Causes\nd’hypoglycémie".uppercaseString
        self.causesButton.button.tag = 0
        self.causesButton.button.addTarget(self, action: "showDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        self.causesArrowButton.addSubview(self.causesButton)
        
        // symptomes button
        self.symptomesButton = NSBundle.mainBundle().loadNibNamed("ArrowButton", owner: self, options: nil)[0] as! ArrowButton
        self.symptomesButton.labelTitle.text = "SYMPTÔMES DÉCELABLES\nPAR VOTRE ENTOURAGE"
        self.symptomesButton.button.tag = 1
        self.symptomesButton.button.addTarget(self, action: "showDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        self.symptomesArrowButton.addSubview(self.symptomesButton)
        
        // symptomes2 button
        self.symptomes2Button = NSBundle.mainBundle().loadNibNamed("ArrowButton", owner: self, options: nil)[0] as! ArrowButton
        self.symptomes2Button.labelTitle.text = "SYMPTÔMES\nD’UNE HYPOGLYCÉMIE"
        self.symptomes2Button.button.tag = 2
        self.symptomes2Button.button.addTarget(self, action: "showDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        self.symptomes2ArrowButton.addSubview(self.symptomes2Button)
        
        // QueFaireButton
        self.QueFaireButton = NSBundle.mainBundle().loadNibNamed("ArrowButton", owner: self, options: nil)[0] as! ArrowButton
        self.QueFaireButton.labelTitle.text = "Que faire en cas\nd’hypoglycémie ".uppercaseString
        self.QueFaireButton.button.tag = 3
        self.QueFaireButton.button.addTarget(self, action: "showDialog:", forControlEvents: UIControlEvents.TouchUpInside)
        self.QueFaireArrowButton.addSubview(self.QueFaireButton)
        
        
        self.createNavigationStyle()
    }
    
    func showDialog (sender: AnyObject) {
        
        println(sender.tag)
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
