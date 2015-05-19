//
//  ConseilsViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/14/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class ConseilsViewController: UIViewController {
    
    @IBOutlet weak var viewContainer: UIView!
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
    var french = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createNavigationStyle()

        // Do any additional setup after loading the view.
        
        var subView : ConseilsSubviews!
        
        if french {
            subView = NSBundle.mainBundle().loadNibNamed("ConseilsSubviews", owner: self, options: nil)[0] as! ConseilsSubviews
        } else {
            subView = NSBundle.mainBundle().loadNibNamed("ConseilsSubviews", owner: self, options: nil)[1] as! ConseilsSubviews
        }
        
        subView.load()
        self.viewContainer.addSubview(subView)
        
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
            self.titleLabel.text = "Quelques conseils pour éviter les hypoglycémies"
        } else {
            self.titleLabel.text = " بعض النصائح لتفادي نقص كمية السكر في الدم"
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
