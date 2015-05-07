//
//  ContainerPresentation.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/5/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class ContainerPresentation: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        self.layer.cornerRadius = 10.0
        self.layer.borderColor = UIColor.whiteColor().CGColor
        self.layer.borderWidth = 15.0
        self.layer.cornerRadius = 10.0
        
        let color = UIColor(red: 0.922, green: 0.929, blue: 0.918, alpha: 1.000)
        
        let rectanglePath = UIBezierPath(rect: CGRectMake(5, 5, CGFloat(self.frame.size.width - 10.0), CGFloat(self.frame.size.height - 10.0)))
        color.setFill()
        rectanglePath.fill()
        
        self.layer.shadowColor = UIColor.blackColor().CGColor
        //self.layer.shadowOffset = CGSizeMake(10, 10)
        //self.layer.shadowOffset = CGSizeMake(-10, -10)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 10.0
    }
    

}
