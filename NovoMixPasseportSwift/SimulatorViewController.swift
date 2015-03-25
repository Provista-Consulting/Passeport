//
//  SimulatorViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/19/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class SimulatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.backgroundImageForBarMetrics(UIBarMetrics.Default)
        self.navigationController?.navigationBar.translucent = true
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
        
        var calculatorVC = segue.destinationViewController as CalculatorViewController
        
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
   

}
