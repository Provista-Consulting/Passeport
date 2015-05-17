//
//  ConseilsViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/14/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class ConseilsViewController: UIViewController {
    
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createNavigationStyle()

        // Do any additional setup after loading the view.
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
        self.titleLabel.text = "Quelques conseils pour éviter les hypoglycémies"
        self.navigationItem.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }

}
