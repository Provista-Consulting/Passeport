//
//  TopButton.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 4/2/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class TopButton: UIButton {

    override var highlighted : Bool {
        
        didSet {
            self.alpha = self.highlighted ? 0.5 : 1.0
            self.backgroundColor = self.highlighted ? UIColor.whiteColor() : UIColor.clearColor()
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        highlighted = false
    }

}
