//
//  HypoDialogViewSubviews4.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/28/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class HypoDialogViewSubviews4: UIView {
    
    @IBOutlet weak var label0: SpringLabel!
    @IBOutlet weak var label1: SpringLabel!
    @IBOutlet weak var label2: SpringLabel!
    @IBOutlet weak var label3: SpringLabel!
    @IBOutlet weak var label4: SpringLabel!
    
    var labelIndex = 0
    var labels : [SpringLabel] = []
    
    func load () {
        
        labels = [label0, label1, label2, label3, label4]
        
        for label in labels {
            
            label.hidden = true
            label.animation = "slideUp"
            //label.animate()
        }
    }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
    @IBAction func click(sender: AnyObject) {
        
        if labelIndex < labels.count {
            labels[labelIndex].hidden = false
            labels[labelIndex].animate()
        }
        
        labelIndex++
    }


}
