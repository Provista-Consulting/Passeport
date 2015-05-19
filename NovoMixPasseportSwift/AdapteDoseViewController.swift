//
//  AdapteDoseViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/5/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class AdapteDoseViewController: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
    var french = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        var subView : AdapteDoseSubviews!
        
        if french {
            subView = NSBundle.mainBundle().loadNibNamed("AdapteDoseSubviews", owner: self, options: nil)[0] as! AdapteDoseSubviews
        } else {
            subView = NSBundle.mainBundle().loadNibNamed("AdapteDoseSubviews", owner: self, options: nil)[1] as! AdapteDoseSubviews
        }
        
        subView.load()
        self.viewContainer.addSubview(subView)
        
        self.createNavigationStyle()
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
        
        if french {
            self.titleLabel.text = "Comment j’adapte ma dose"
        } else {
            self.titleLabel.text = "كيفية ضبط الجرعة"
        }
        
        
        self.navigationItem.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }

}
