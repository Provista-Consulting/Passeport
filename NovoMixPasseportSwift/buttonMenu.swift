//
//  ButtonMenu.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/5/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class buttonMenu: UIView {

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelNumber: UILabel!
    @IBOutlet var button: TopButton!
    
    var active : Bool = false {
        
        didSet {
            
            self.setNeedsDisplay()
        }
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        self.labelTitle.adjustsFontSizeToFitWidth = true
        
        let color0 = UIColor(red: 0.082, green: 0.546, blue: 0.820, alpha: 1.000)
        let color1 = UIColor(red: 0.011, green: 0.156, blue: 0.394, alpha: 1.000)
        let color2 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        
        let color = UIColor(red: 0.082, green: 0.546, blue: 0.820, alpha: 1.000)
        let color3 = UIColor(red: 0.011, green: 0.156, blue: 0.394, alpha: 1.000)
        let color4 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)

        if self.active {
            self.alpha = 1.0
            
            //// Group
            //// Group 2
            //// Bezier Drawing
            var bezierPath = UIBezierPath()
            bezierPath.moveToPoint(CGPointMake(188.68, 6.5))
            bezierPath.addLineToPoint(CGPointMake(20.01, 6.5))
            bezierPath.addLineToPoint(CGPointMake(20.01, 43.26))
            bezierPath.addLineToPoint(CGPointMake(162.92, 43.26))
            bezierPath.addLineToPoint(CGPointMake(188.68, 17.5))
            bezierPath.addLineToPoint(CGPointMake(188.68, 6.5))
            bezierPath.closePath()
            bezierPath.miterLimit = 4;
            
            color0.setFill()
            bezierPath.fill()
            
            //// Group 3
            //// Group 4
            //// Bezier 2 Drawing
            var bezier2Path = UIBezierPath()
            bezier2Path.moveToPoint(CGPointMake(162.69, 42.57))
            bezier2Path.addCurveToPoint(CGPointMake(188.75, 17.31), controlPoint1: CGPointMake(172.75, 35.83), controlPoint2: CGPointMake(181.44, 27.38))
            bezier2Path.addCurveToPoint(CGPointMake(165.03, 19.12), controlPoint1: CGPointMake(180.83, 18.02), controlPoint2: CGPointMake(172.92, 18.62))
            bezier2Path.addCurveToPoint(CGPointMake(162.69, 42.57), controlPoint1: CGPointMake(164.26, 26.95), controlPoint2: CGPointMake(163.48, 34.77))
            bezier2Path.closePath()
            bezier2Path.miterLimit = 4;
            
            color1.setFill()
            bezier2Path.fill()
            
            //// Bezier 3 Drawing
            var bezier3Path = UIBezierPath()
            bezier3Path.moveToPoint(CGPointMake(1, 24.88))
            bezier3Path.addCurveToPoint(CGPointMake(24.88, 1), controlPoint1: CGPointMake(1, 11.69), controlPoint2: CGPointMake(11.7, 1))
            bezier3Path.addCurveToPoint(CGPointMake(48.77, 24.88), controlPoint1: CGPointMake(38.07, 1), controlPoint2: CGPointMake(48.77, 11.69))
            bezier3Path.addCurveToPoint(CGPointMake(24.88, 48.77), controlPoint1: CGPointMake(48.77, 38.07), controlPoint2: CGPointMake(38.07, 48.77))
            bezier3Path.addCurveToPoint(CGPointMake(1, 24.88), controlPoint1: CGPointMake(11.7, 48.77), controlPoint2: CGPointMake(1, 38.07))
            bezier3Path.closePath()
            bezier3Path.miterLimit = 4;
            
            color0.setFill()
            bezier3Path.fill()
            
            
            //// Bezier 4 Drawing
            var bezier4Path = UIBezierPath()
            bezier4Path.moveToPoint(CGPointMake(34.42, 8.36))
            bezier4Path.addCurveToPoint(CGPointMake(8.36, 15.34), controlPoint1: CGPointMake(25.3, 3.09), controlPoint2: CGPointMake(13.63, 6.22))
            bezier4Path.addCurveToPoint(CGPointMake(15.35, 41.4), controlPoint1: CGPointMake(3.09, 24.47), controlPoint2: CGPointMake(6.22, 36.14))
            bezier4Path.addCurveToPoint(CGPointMake(41.4, 34.42), controlPoint1: CGPointMake(24.47, 46.67), controlPoint2: CGPointMake(36.14, 43.55))
            bezier4Path.addCurveToPoint(CGPointMake(34.42, 8.36), controlPoint1: CGPointMake(46.68, 25.3), controlPoint2: CGPointMake(43.55, 13.63))
            bezier4Path.closePath()
            bezier4Path.miterLimit = 4;
            
            color1.setFill()
            bezier4Path.fill()
            
            
            //// Oval Drawing
            var ovalPath = UIBezierPath(ovalInRect: CGRectMake(10.5, 10.5, 28.77, 28.77))
            color2.setStroke()
            ovalPath.lineWidth = 1
            ovalPath.stroke()

        } else {
            
            self.alpha = 0.5
            //// Group
            //// Bezier 3 Drawing
            var bezier3Path = UIBezierPath()
            bezier3Path.moveToPoint(CGPointMake(-168.33, 37.49))
            bezier3Path.addCurveToPoint(CGPointMake(-144.44, 13.6), controlPoint1: CGPointMake(-168.33, 24.29), controlPoint2: CGPointMake(-157.63, 13.6))
            bezier3Path.addCurveToPoint(CGPointMake(-120.56, 37.49), controlPoint1: CGPointMake(-131.26, 13.6), controlPoint2: CGPointMake(-120.56, 24.29))
            bezier3Path.addCurveToPoint(CGPointMake(-144.44, 61.37), controlPoint1: CGPointMake(-120.56, 50.67), controlPoint2: CGPointMake(-131.26, 61.37))
            bezier3Path.addCurveToPoint(CGPointMake(-168.33, 37.49), controlPoint1: CGPointMake(-157.63, 61.37), controlPoint2: CGPointMake(-168.33, 50.67))
            bezier3Path.closePath()
            bezier3Path.miterLimit = 4;
            
            color.setFill()
            bezier3Path.fill()
            
            
            //// Bezier 4 Drawing
            var bezier4Path = UIBezierPath()
            bezier4Path.moveToPoint(CGPointMake(-134.91, 20.97))
            bezier4Path.addCurveToPoint(CGPointMake(-160.97, 27.95), controlPoint1: CGPointMake(-144.03, 15.7), controlPoint2: CGPointMake(-155.7, 18.82))
            bezier4Path.addCurveToPoint(CGPointMake(-153.98, 54.01), controlPoint1: CGPointMake(-166.23, 37.07), controlPoint2: CGPointMake(-163.11, 48.74))
            bezier4Path.addCurveToPoint(CGPointMake(-127.92, 47.03), controlPoint1: CGPointMake(-144.86, 59.28), controlPoint2: CGPointMake(-133.19, 56.15))
            bezier4Path.addCurveToPoint(CGPointMake(-134.91, 20.97), controlPoint1: CGPointMake(-122.65, 37.9), controlPoint2: CGPointMake(-125.78, 26.24))
            bezier4Path.closePath()
            bezier4Path.miterLimit = 4;
            
            color3.setFill()
            bezier4Path.fill()
            
            
            //// Oval Drawing
            var ovalPath = UIBezierPath(ovalInRect: CGRectMake(-158.83, 23.1, 28.77, 28.77))
            color4.setStroke()
            ovalPath.lineWidth = 1
            ovalPath.stroke()
            
            
            
            
            //// Group 5
            //// Group 6
            //// Rectangle Drawing
            let rectanglePath = UIBezierPath(rect: CGRectMake(20.01, 6.5, 168.67, 36.76))
            color.setFill()
            rectanglePath.fill()
            
            
            
            
            //// Bezier 5 Drawing
            var bezier5Path = UIBezierPath()
            bezier5Path.moveToPoint(CGPointMake(1, 24.88))
            bezier5Path.addCurveToPoint(CGPointMake(24.88, 1), controlPoint1: CGPointMake(1, 11.69), controlPoint2: CGPointMake(11.7, 1))
            bezier5Path.addCurveToPoint(CGPointMake(48.77, 24.88), controlPoint1: CGPointMake(38.07, 1), controlPoint2: CGPointMake(48.77, 11.69))
            bezier5Path.addCurveToPoint(CGPointMake(24.88, 48.77), controlPoint1: CGPointMake(48.77, 38.07), controlPoint2: CGPointMake(38.07, 48.77))
            bezier5Path.addCurveToPoint(CGPointMake(1, 24.88), controlPoint1: CGPointMake(11.7, 48.77), controlPoint2: CGPointMake(1, 38.07))
            bezier5Path.closePath()
            bezier5Path.miterLimit = 4;
            
            color.setFill()
            bezier5Path.fill()
            
            
            //// Bezier 6 Drawing
            var bezier6Path = UIBezierPath()
            bezier6Path.moveToPoint(CGPointMake(34.42, 8.36))
            bezier6Path.addCurveToPoint(CGPointMake(8.36, 15.34), controlPoint1: CGPointMake(25.3, 3.09), controlPoint2: CGPointMake(13.63, 6.22))
            bezier6Path.addCurveToPoint(CGPointMake(15.35, 41.4), controlPoint1: CGPointMake(3.09, 24.47), controlPoint2: CGPointMake(6.22, 36.14))
            bezier6Path.addCurveToPoint(CGPointMake(41.4, 34.42), controlPoint1: CGPointMake(24.47, 46.67), controlPoint2: CGPointMake(36.14, 43.55))
            bezier6Path.addCurveToPoint(CGPointMake(34.42, 8.36), controlPoint1: CGPointMake(46.68, 25.3), controlPoint2: CGPointMake(43.55, 13.63))
            bezier6Path.closePath()
            bezier6Path.miterLimit = 4;
            
            color3.setFill()
            bezier6Path.fill()
            
            
            //// Oval 2 Drawing
            var oval2Path = UIBezierPath(ovalInRect: CGRectMake(10.5, 10.5, 28.77, 28.77))
            color.setFill()
            oval2Path.fill()
            color4.setStroke()
            oval2Path.lineWidth = 1
            oval2Path.stroke()

            
        }
    }
    

}
