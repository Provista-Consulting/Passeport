//
//  AdapteDoseSubviews.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/18/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class AdapteDoseSubviews: UIView {
    
    var counter = 0

    @IBOutlet weak var label0: SpringLabel!
    @IBOutlet weak var label1: SpringLabel!
    @IBOutlet weak var label2: SpringLabel!
    @IBOutlet weak var viewExample: SpringView!
    
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
        self.viewExample.hidden = true
        
    }

    @IBAction func click(sender: AnyObject) {
        
        switch self.counter {
        case 0 :
            self.label0.hidden = false
            self.label0.animation = "fadeIn"
            self.label0.animate()
            break
        case 1 :
            self.label2.hidden = false
            self.label2.animation = "slideLeft"
            self.label2.animate()
            break
        case 2 :
            self.label1.hidden = false
            self.label1.animation = "slideLeft"
            self.label1.animate()
            break
        case 3 :
            self.viewExample.hidden = false
            self.viewExample.animation = "zoomIn"
            self.viewExample.animate()
            break
        default :
            
            break
        }
        
        self.counter++
    }
}
