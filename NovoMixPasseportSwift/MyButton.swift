//
//  MyButton.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/17/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class MyButton: UIButton {
    
    override var highlighted : Bool {
        
        didSet {
            self.alpha = self.highlighted ? 0.9 : 1.0
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        highlighted = false
    }

}
