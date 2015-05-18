//
//  ConseilsSubviews.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/18/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class ConseilsSubviews: UIView {
    
    var counter = 0
    
    @IBOutlet weak var label0: SpringLabel!
    @IBOutlet weak var label1: SpringLabel!
    @IBOutlet weak var label2: SpringLabel!
    @IBOutlet weak var label3: SpringLabel!
    @IBOutlet weak var label4: SpringLabel!
    @IBOutlet weak var label5: SpringLabel!
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    func load () {
        
        self.label0.hidden = true
        self.label1.hidden = true
        self.label2.hidden = true
        self.label3.hidden = true
        self.label4.hidden = true
        self.label5.hidden = true
    }

    @IBAction func click(sender: AnyObject) {
        
        switch self.counter {
        case 0 :
            self.label0.hidden = false
            self.label0.animation = "squeezeUp"
            self.label0.animate()
            break
        case 1 :
            self.label1.hidden = false
            self.label1.animation = "squeezeUp"
            self.label1.animate()
            break
        case 2 :
            self.label2.hidden = false
            self.label2.animation = "squeezeUp"
            self.label2.animate()
            break
        case 3 :
            self.label3.hidden = false
            self.label3.animation = "squeezeUp"
            self.label3.animate()
            break
        case 4 :
            self.label4.hidden = false
            self.label4.animation = "squeezeUp"
            self.label4.animate()
            break
        case 5 :
            self.label5.hidden = false
            self.label5.animation = "squeezeUp"
            self.label5.animate()
            break
        default :
            break
        }
        
        self.counter++
    }
}
