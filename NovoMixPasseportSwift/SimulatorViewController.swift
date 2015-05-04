//
//  SimulatorViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/19/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class SimulatorViewController: UIViewController {
    
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        self.navigationController?.navigationBar.backgroundImageForBarMetrics(UIBarMetrics.Default)
//        self.navigationController?.navigationBar.translucent = true
        
        createNavigationStyle()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        self.setNeedsStatusBarAppearanceUpdate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        var calculatorVC = segue.destinationViewController as! CalculatorViewController
        
        if sender?.tag == 100 {
            // Night + 1 Inj
            calculatorVC.day = false
            calculatorVC.oneInj = true
        }
        
        if sender?.tag == 101 {
            // day + 1 Inj
            calculatorVC.day = true
            calculatorVC.oneInj = true
        }
        
        if sender?.tag == 102 {
            // 2 Inj
            calculatorVC.day = true
            calculatorVC.oneInj = false
        }
    }
    
    // MARK: - UI
    
    func createNavigationStyle () {
        
        // Create custom label for titleView
        //self.titleLabel.text = "Simulation"
        self.titleLabel.backgroundColor = UIColor.clearColor()
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.textColor = UIColor.blackColor()
        self.titleLabel.textAlignment = .Center
        self.titleLabel.font = UIFont.boldSystemFontOfSize(22.0)
        self.titleLabel.text = "Simulation d'adaptation de dosages"
        self.navigationItem.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
                
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }
    
    // MARK: - Actions
   
    @IBAction func close(sender: AnyObject) {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }

}
