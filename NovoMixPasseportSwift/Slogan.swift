//
//  Slogan.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 4/1/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class Slogan: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Color Declarations
        let color1 = UIColor(red: 0.023, green: 0.229, blue: 0.504, alpha: 1.000)
        let color0 = UIColor(red: 0.017, green: 0.197, blue: 0.475, alpha: 1.000)
        let color2 = UIColor(red: 0.038, green: 0.317, blue: 0.593, alpha: 1.000)
        let color3 = UIColor(red: 0.059, green: 0.481, blue: 0.773, alpha: 1.000)
        let color4 = UIColor(red: 0.076, green: 0.615, blue: 0.920, alpha: 1.000)
        
        //// Gradient Declarations
        let sVGID_2_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_15_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_5_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_11_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_8_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_16_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_1_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_12_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_4_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_7_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_13_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_3_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_6_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_14_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_9_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        let sVGID_10_ = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [color0.CGColor, color1.CGColor, color2.CGColor, color3.CGColor, color4.CGColor, color3.CGColor, color2.CGColor, color1.CGColor, color0.CGColor], [0, 0.07, 0.2, 0.39, 0.5, 0.61, 0.8, 0.93, 1])
        
        //// Group
        //// Group 2
        //// Group 3
        //// Group 4
        //// Bezier Drawing
        var bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(8.19, 7.78))
        bezierPath.addCurveToPoint(CGPointMake(6.41, 7.41), controlPoint1: CGPointMake(7.72, 7.57), controlPoint2: CGPointMake(7.21, 7.41))
        bezierPath.addCurveToPoint(CGPointMake(3.74, 10.61), controlPoint1: CGPointMake(4.78, 7.41), controlPoint2: CGPointMake(3.74, 8.7))
        bezierPath.addCurveToPoint(CGPointMake(6.47, 13.89), controlPoint1: CGPointMake(3.74, 12.47), controlPoint2: CGPointMake(4.63, 13.89))
        bezierPath.addCurveToPoint(CGPointMake(8.49, 13.42), controlPoint1: CGPointMake(7.21, 13.89), controlPoint2: CGPointMake(8.04, 13.62))
        bezierPath.addLineToPoint(CGPointMake(8.6, 15.6))
        bezierPath.addCurveToPoint(CGPointMake(5.98, 15.93), controlPoint1: CGPointMake(7.84, 15.84), controlPoint2: CGPointMake(7.06, 15.93))
        bezierPath.addCurveToPoint(CGPointMake(1, 10.61), controlPoint1: CGPointMake(2.67, 15.93), controlPoint2: CGPointMake(1, 13.68))
        bezierPath.addCurveToPoint(CGPointMake(5.88, 5.37), controlPoint1: CGPointMake(1, 7.68), controlPoint2: CGPointMake(2.73, 5.37))
        bezierPath.addCurveToPoint(CGPointMake(8.43, 5.7), controlPoint1: CGPointMake(6.94, 5.37), controlPoint2: CGPointMake(7.7, 5.48))
        bezierPath.addLineToPoint(CGPointMake(8.19, 7.78))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezierPath.addClip()
        CGContextDrawLinearGradient(context, sVGID_1_,
            CGPointMake(1.57, 8.41),
            CGPointMake(69.44, 41.51),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 2 Drawing
        var bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(10.09, 1))
        bezier2Path.addLineToPoint(CGPointMake(12.72, 1))
        bezier2Path.addLineToPoint(CGPointMake(12.72, 6.98))
        bezier2Path.addLineToPoint(CGPointMake(12.76, 6.98))
        bezier2Path.addCurveToPoint(CGPointMake(15.93, 5.37), controlPoint1: CGPointMake(13.42, 6), controlPoint2: CGPointMake(14.56, 5.37))
        bezier2Path.addCurveToPoint(CGPointMake(19.36, 9.33), controlPoint1: CGPointMake(18.32, 5.37), controlPoint2: CGPointMake(19.36, 7.06))
        bezier2Path.addLineToPoint(CGPointMake(19.36, 15.7))
        bezier2Path.addLineToPoint(CGPointMake(16.74, 15.7))
        bezier2Path.addLineToPoint(CGPointMake(16.74, 10.31))
        bezier2Path.addCurveToPoint(CGPointMake(15.03, 7.41), controlPoint1: CGPointMake(16.74, 9.08), controlPoint2: CGPointMake(16.72, 7.41))
        bezier2Path.addCurveToPoint(CGPointMake(12.72, 10.76), controlPoint1: CGPointMake(13.13, 7.41), controlPoint2: CGPointMake(12.72, 9.47))
        bezier2Path.addLineToPoint(CGPointMake(12.72, 15.7))
        bezier2Path.addLineToPoint(CGPointMake(10.09, 15.7))
        bezier2Path.addLineToPoint(CGPointMake(10.09, 1))
        bezier2Path.closePath()
        bezier2Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier2Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_2_,
            CGPointMake(3.66, 4.57),
            CGPointMake(71.52, 37.67),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 3 Drawing
        var bezier3Path = UIBezierPath()
        bezier3Path.moveToPoint(CGPointMake(22.05, 6.14))
        bezier3Path.addCurveToPoint(CGPointMake(25.56, 5.37), controlPoint1: CGPointMake(23.07, 5.66), controlPoint2: CGPointMake(24.44, 5.37))
        bezier3Path.addCurveToPoint(CGPointMake(29.91, 9.62), controlPoint1: CGPointMake(28.64, 5.37), controlPoint2: CGPointMake(29.91, 6.64))
        bezier3Path.addLineToPoint(CGPointMake(29.91, 10.92))
        bezier3Path.addCurveToPoint(CGPointMake(29.95, 13.44), controlPoint1: CGPointMake(29.91, 11.94), controlPoint2: CGPointMake(29.93, 12.7))
        bezier3Path.addCurveToPoint(CGPointMake(30.06, 15.7), controlPoint1: CGPointMake(29.97, 14.21), controlPoint2: CGPointMake(30.01, 14.91))
        bezier3Path.addLineToPoint(CGPointMake(27.75, 15.7))
        bezier3Path.addCurveToPoint(CGPointMake(27.63, 14.19), controlPoint1: CGPointMake(27.65, 15.17), controlPoint2: CGPointMake(27.65, 14.5))
        bezier3Path.addLineToPoint(CGPointMake(27.6, 14.19))
        bezier3Path.addCurveToPoint(CGPointMake(24.48, 15.93), controlPoint1: CGPointMake(26.99, 15.31), controlPoint2: CGPointMake(25.68, 15.93))
        bezier3Path.addCurveToPoint(CGPointMake(20.95, 12.94), controlPoint1: CGPointMake(22.69, 15.93), controlPoint2: CGPointMake(20.95, 14.86))
        bezier3Path.addCurveToPoint(CGPointMake(22.67, 10.05), controlPoint1: CGPointMake(20.95, 11.42), controlPoint2: CGPointMake(21.68, 10.54))
        bezier3Path.addCurveToPoint(CGPointMake(26.07, 9.46), controlPoint1: CGPointMake(23.68, 9.56), controlPoint2: CGPointMake(24.97, 9.46))
        bezier3Path.addLineToPoint(CGPointMake(27.52, 9.46))
        bezier3Path.addCurveToPoint(CGPointMake(25.24, 7.29), controlPoint1: CGPointMake(27.52, 7.84), controlPoint2: CGPointMake(26.79, 7.29))
        bezier3Path.addCurveToPoint(CGPointMake(22.13, 8.39), controlPoint1: CGPointMake(24.13, 7.29), controlPoint2: CGPointMake(23.01, 7.72))
        bezier3Path.addLineToPoint(CGPointMake(22.05, 6.14))
        bezier3Path.closePath()
        bezier3Path.moveToPoint(CGPointMake(25.12, 14.01))
        bezier3Path.addCurveToPoint(CGPointMake(26.97, 13.11), controlPoint1: CGPointMake(25.93, 14.01), controlPoint2: CGPointMake(26.55, 13.66))
        bezier3Path.addCurveToPoint(CGPointMake(27.52, 11.03), controlPoint1: CGPointMake(27.4, 12.54), controlPoint2: CGPointMake(27.52, 11.82))
        bezier3Path.addLineToPoint(CGPointMake(26.38, 11.03))
        bezier3Path.addCurveToPoint(CGPointMake(23.46, 12.78), controlPoint1: CGPointMake(25.2, 11.03), controlPoint2: CGPointMake(23.46, 11.23))
        bezier3Path.addCurveToPoint(CGPointMake(25.12, 14.01), controlPoint1: CGPointMake(23.46, 13.64), controlPoint2: CGPointMake(24.19, 14.01))
        bezier3Path.closePath()
        bezier3Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier3Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_3_,
            CGPointMake(5.42, 0.95),
            CGPointMake(73.3, 34.06),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 4 Drawing
        var bezier4Path = UIBezierPath()
        bezier4Path.moveToPoint(CGPointMake(32.02, 5.6))
        bezier4Path.addLineToPoint(CGPointMake(34.51, 5.6))
        bezier4Path.addLineToPoint(CGPointMake(34.51, 6.98))
        bezier4Path.addLineToPoint(CGPointMake(34.55, 6.98))
        bezier4Path.addCurveToPoint(CGPointMake(37.87, 5.37), controlPoint1: CGPointMake(35.37, 5.82), controlPoint2: CGPointMake(36.49, 5.37))
        bezier4Path.addCurveToPoint(CGPointMake(41.3, 9.33), controlPoint1: CGPointMake(40.26, 5.37), controlPoint2: CGPointMake(41.3, 7.05))
        bezier4Path.addLineToPoint(CGPointMake(41.3, 15.7))
        bezier4Path.addLineToPoint(CGPointMake(38.67, 15.7))
        bezier4Path.addLineToPoint(CGPointMake(38.67, 10.31))
        bezier4Path.addCurveToPoint(CGPointMake(36.97, 7.41), controlPoint1: CGPointMake(38.67, 9.08), controlPoint2: CGPointMake(38.65, 7.41))
        bezier4Path.addCurveToPoint(CGPointMake(34.65, 10.76), controlPoint1: CGPointMake(35.06, 7.41), controlPoint2: CGPointMake(34.65, 9.47))
        bezier4Path.addLineToPoint(CGPointMake(34.65, 15.7))
        bezier4Path.addLineToPoint(CGPointMake(32.02, 15.7))
        bezier4Path.addLineToPoint(CGPointMake(32.02, 5.6))
        bezier4Path.closePath()
        bezier4Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier4Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_4_,
            CGPointMake(7.41, -3.13),
            CGPointMake(75.29, 29.98),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 5 Drawing
        var bezier5Path = UIBezierPath()
        bezier5Path.moveToPoint(CGPointMake(52.7, 5.6))
        bezier5Path.addLineToPoint(CGPointMake(52.7, 14.95))
        bezier5Path.addCurveToPoint(CGPointMake(47.37, 20.05), controlPoint1: CGPointMake(52.7, 17.7), controlPoint2: CGPointMake(51.6, 20.05))
        bezier5Path.addCurveToPoint(CGPointMake(43.88, 19.36), controlPoint1: CGPointMake(46.33, 20.05), controlPoint2: CGPointMake(45.13, 19.9))
        bezier5Path.addLineToPoint(CGPointMake(44.09, 17.13))
        bezier5Path.addCurveToPoint(CGPointMake(47.03, 18.01), controlPoint1: CGPointMake(44.9, 17.56), controlPoint2: CGPointMake(46.21, 18.01))
        bezier5Path.addCurveToPoint(CGPointMake(50.07, 14.33), controlPoint1: CGPointMake(49.93, 18.01), controlPoint2: CGPointMake(50.07, 16.07))
        bezier5Path.addLineToPoint(CGPointMake(50.03, 14.33))
        bezier5Path.addCurveToPoint(CGPointMake(46.89, 15.94), controlPoint1: CGPointMake(49.54, 15.19), controlPoint2: CGPointMake(48.36, 15.94))
        bezier5Path.addCurveToPoint(CGPointMake(42.78, 10.72), controlPoint1: CGPointMake(43.91, 15.94), controlPoint2: CGPointMake(42.78, 13.43))
        bezier5Path.addCurveToPoint(CGPointMake(47.05, 5.37), controlPoint1: CGPointMake(42.78, 8.29), controlPoint2: CGPointMake(44.03, 5.37))
        bezier5Path.addCurveToPoint(CGPointMake(50.14, 6.98), controlPoint1: CGPointMake(48.38, 5.37), controlPoint2: CGPointMake(49.42, 5.82))
        bezier5Path.addLineToPoint(CGPointMake(50.18, 6.98))
        bezier5Path.addLineToPoint(CGPointMake(50.18, 5.6))
        bezier5Path.addLineToPoint(CGPointMake(52.7, 5.6))
        bezier5Path.closePath()
        bezier5Path.moveToPoint(CGPointMake(50.07, 10.66))
        bezier5Path.addCurveToPoint(CGPointMake(47.88, 7.41), controlPoint1: CGPointMake(50.07, 8.94), controlPoint2: CGPointMake(49.4, 7.41))
        bezier5Path.addCurveToPoint(CGPointMake(45.52, 10.72), controlPoint1: CGPointMake(46.09, 7.41), controlPoint2: CGPointMake(45.52, 9.17))
        bezier5Path.addCurveToPoint(CGPointMake(47.75, 13.89), controlPoint1: CGPointMake(45.52, 12.09), controlPoint2: CGPointMake(46.25, 13.89))
        bezier5Path.addCurveToPoint(CGPointMake(50.07, 10.66), controlPoint1: CGPointMake(49.4, 13.89), controlPoint2: CGPointMake(50.07, 12.34))
        bezier5Path.closePath()
        bezier5Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier5Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_5_,
            CGPointMake(8.95, -6.7),
            CGPointMake(77.05, 26.51),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 6 Drawing
        var bezier6Path = UIBezierPath()
        bezier6Path.moveToPoint(CGPointMake(54.99, 1.25))
        bezier6Path.addLineToPoint(CGPointMake(57.62, 1.25))
        bezier6Path.addLineToPoint(CGPointMake(57.62, 3.76))
        bezier6Path.addLineToPoint(CGPointMake(54.99, 3.76))
        bezier6Path.addLineToPoint(CGPointMake(54.99, 1.25))
        bezier6Path.closePath()
        bezier6Path.moveToPoint(CGPointMake(54.99, 5.6))
        bezier6Path.addLineToPoint(CGPointMake(57.62, 5.6))
        bezier6Path.addLineToPoint(CGPointMake(57.62, 15.7))
        bezier6Path.addLineToPoint(CGPointMake(54.99, 15.7))
        bezier6Path.addLineToPoint(CGPointMake(54.99, 5.6))
        bezier6Path.closePath()
        bezier6Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier6Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_6_,
            CGPointMake(12.15, -13.06),
            CGPointMake(80.03, 20.05),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 7 Drawing
        var bezier7Path = UIBezierPath()
        bezier7Path.moveToPoint(CGPointMake(59.91, 5.6))
        bezier7Path.addLineToPoint(CGPointMake(62.39, 5.6))
        bezier7Path.addLineToPoint(CGPointMake(62.39, 6.98))
        bezier7Path.addLineToPoint(CGPointMake(62.44, 6.98))
        bezier7Path.addCurveToPoint(CGPointMake(65.75, 5.37), controlPoint1: CGPointMake(63.26, 5.82), controlPoint2: CGPointMake(64.38, 5.37))
        bezier7Path.addCurveToPoint(CGPointMake(69.18, 9.33), controlPoint1: CGPointMake(68.14, 5.37), controlPoint2: CGPointMake(69.18, 7.05))
        bezier7Path.addLineToPoint(CGPointMake(69.18, 15.7))
        bezier7Path.addLineToPoint(CGPointMake(66.55, 15.7))
        bezier7Path.addLineToPoint(CGPointMake(66.55, 10.31))
        bezier7Path.addCurveToPoint(CGPointMake(64.85, 7.41), controlPoint1: CGPointMake(66.55, 9.08), controlPoint2: CGPointMake(66.53, 7.41))
        bezier7Path.addCurveToPoint(CGPointMake(62.53, 10.76), controlPoint1: CGPointMake(62.95, 7.41), controlPoint2: CGPointMake(62.53, 9.47))
        bezier7Path.addLineToPoint(CGPointMake(62.53, 15.7))
        bezier7Path.addLineToPoint(CGPointMake(59.91, 15.7))
        bezier7Path.addLineToPoint(CGPointMake(59.91, 5.6))
        bezier7Path.closePath()
        bezier7Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier7Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_7_,
            CGPointMake(12.67, -14.16),
            CGPointMake(80.56, 18.95),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 8 Drawing
        var bezier8Path = UIBezierPath()
        bezier8Path.moveToPoint(CGPointMake(80.58, 5.6))
        bezier8Path.addLineToPoint(CGPointMake(80.58, 14.95))
        bezier8Path.addCurveToPoint(CGPointMake(75.25, 20.05), controlPoint1: CGPointMake(80.58, 17.7), controlPoint2: CGPointMake(79.48, 20.05))
        bezier8Path.addCurveToPoint(CGPointMake(71.76, 19.36), controlPoint1: CGPointMake(74.21, 20.05), controlPoint2: CGPointMake(73.01, 19.9))
        bezier8Path.addLineToPoint(CGPointMake(71.97, 17.13))
        bezier8Path.addCurveToPoint(CGPointMake(74.91, 18.01), controlPoint1: CGPointMake(72.78, 17.56), controlPoint2: CGPointMake(74.09, 18.01))
        bezier8Path.addCurveToPoint(CGPointMake(77.95, 14.33), controlPoint1: CGPointMake(77.81, 18.01), controlPoint2: CGPointMake(77.95, 16.07))
        bezier8Path.addLineToPoint(CGPointMake(77.92, 14.33))
        bezier8Path.addCurveToPoint(CGPointMake(74.77, 15.94), controlPoint1: CGPointMake(77.43, 15.19), controlPoint2: CGPointMake(76.25, 15.94))
        bezier8Path.addCurveToPoint(CGPointMake(70.66, 10.72), controlPoint1: CGPointMake(71.8, 15.94), controlPoint2: CGPointMake(70.66, 13.43))
        bezier8Path.addCurveToPoint(CGPointMake(74.93, 5.37), controlPoint1: CGPointMake(70.66, 8.29), controlPoint2: CGPointMake(71.92, 5.37))
        bezier8Path.addCurveToPoint(CGPointMake(78.03, 6.98), controlPoint1: CGPointMake(76.27, 5.37), controlPoint2: CGPointMake(77.31, 5.82))
        bezier8Path.addLineToPoint(CGPointMake(78.07, 6.98))
        bezier8Path.addLineToPoint(CGPointMake(78.07, 5.6))
        bezier8Path.addLineToPoint(CGPointMake(80.58, 5.6))
        bezier8Path.closePath()
        bezier8Path.moveToPoint(CGPointMake(77.95, 10.66))
        bezier8Path.addCurveToPoint(CGPointMake(75.75, 7.41), controlPoint1: CGPointMake(77.95, 8.94), controlPoint2: CGPointMake(77.29, 7.41))
        bezier8Path.addCurveToPoint(CGPointMake(73.41, 10.72), controlPoint1: CGPointMake(73.98, 7.41), controlPoint2: CGPointMake(73.41, 9.17))
        bezier8Path.addCurveToPoint(CGPointMake(75.64, 13.89), controlPoint1: CGPointMake(73.41, 12.09), controlPoint2: CGPointMake(74.13, 13.89))
        bezier8Path.addCurveToPoint(CGPointMake(77.95, 10.66), controlPoint1: CGPointMake(77.28, 13.89), controlPoint2: CGPointMake(77.95, 12.34))
        bezier8Path.closePath()
        bezier8Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier8Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_8_,
            CGPointMake(14.16, -17.76),
            CGPointMake(82.25, 15.45),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 9 Drawing
        var bezier9Path = UIBezierPath()
        bezier9Path.moveToPoint(CGPointMake(8.37, 30.9))
        bezier9Path.addLineToPoint(CGPointMake(8.33, 30.9))
        bezier9Path.addCurveToPoint(CGPointMake(5.23, 32.27), controlPoint1: CGPointMake(7.55, 31.87), controlPoint2: CGPointMake(6.47, 32.27))
        bezier9Path.addCurveToPoint(CGPointMake(1, 26.96), controlPoint1: CGPointMake(2.13, 32.27), controlPoint2: CGPointMake(1, 29.72))
        bezier9Path.addCurveToPoint(CGPointMake(5.23, 21.7), controlPoint1: CGPointMake(1, 24.17), controlPoint2: CGPointMake(2.14, 21.7))
        bezier9Path.addCurveToPoint(CGPointMake(8.25, 23.11), controlPoint1: CGPointMake(6.54, 21.7), controlPoint2: CGPointMake(7.47, 22.15))
        bezier9Path.addLineToPoint(CGPointMake(8.29, 23.11))
        bezier9Path.addLineToPoint(CGPointMake(8.29, 17.33))
        bezier9Path.addLineToPoint(CGPointMake(10.92, 17.33))
        bezier9Path.addLineToPoint(CGPointMake(10.92, 32.03))
        bezier9Path.addLineToPoint(CGPointMake(8.37, 32.03))
        bezier9Path.addLineToPoint(CGPointMake(8.37, 30.9))
        bezier9Path.closePath()
        bezier9Path.moveToPoint(CGPointMake(5.96, 30.23))
        bezier9Path.addCurveToPoint(CGPointMake(8.27, 26.96), controlPoint1: CGPointMake(7.7, 30.23), controlPoint2: CGPointMake(8.27, 28.39))
        bezier9Path.addCurveToPoint(CGPointMake(5.92, 23.75), controlPoint1: CGPointMake(8.27, 25.55), controlPoint2: CGPointMake(7.6, 23.75))
        bezier9Path.addCurveToPoint(CGPointMake(3.74, 26.96), controlPoint1: CGPointMake(4.22, 23.75), controlPoint2: CGPointMake(3.74, 25.61))
        bezier9Path.addCurveToPoint(CGPointMake(5.96, 30.23), controlPoint1: CGPointMake(3.74, 28.35), controlPoint2: CGPointMake(4.23, 30.23))
        bezier9Path.closePath()
        bezier9Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier9Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_9_,
            CGPointMake(-3.74, 19.3),
            CGPointMake(64.14, 52.41),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 10 Drawing
        var bezier10Path = UIBezierPath()
        bezier10Path.moveToPoint(CGPointMake(13.21, 17.59))
        bezier10Path.addLineToPoint(CGPointMake(15.84, 17.59))
        bezier10Path.addLineToPoint(CGPointMake(15.84, 20.1))
        bezier10Path.addLineToPoint(CGPointMake(13.21, 20.1))
        bezier10Path.addLineToPoint(CGPointMake(13.21, 17.59))
        bezier10Path.closePath()
        bezier10Path.moveToPoint(CGPointMake(13.21, 21.94))
        bezier10Path.addLineToPoint(CGPointMake(15.84, 21.94))
        bezier10Path.addLineToPoint(CGPointMake(15.84, 32.03))
        bezier10Path.addLineToPoint(CGPointMake(13.21, 32.03))
        bezier10Path.addLineToPoint(CGPointMake(13.21, 21.94))
        bezier10Path.closePath()
        bezier10Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier10Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_10_,
            CGPointMake(-2.4, 16.56),
            CGPointMake(65.48, 49.67),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 11 Drawing
        var bezier11Path = UIBezierPath()
        bezier11Path.moveToPoint(CGPointMake(18.58, 22.47))
        bezier11Path.addCurveToPoint(CGPointMake(22.09, 21.7), controlPoint1: CGPointMake(19.6, 22), controlPoint2: CGPointMake(20.97, 21.7))
        bezier11Path.addCurveToPoint(CGPointMake(26.44, 25.96), controlPoint1: CGPointMake(25.17, 21.7), controlPoint2: CGPointMake(26.44, 22.98))
        bezier11Path.addLineToPoint(CGPointMake(26.44, 27.25))
        bezier11Path.addCurveToPoint(CGPointMake(26.48, 29.78), controlPoint1: CGPointMake(26.44, 28.27), controlPoint2: CGPointMake(26.46, 29.03))
        bezier11Path.addCurveToPoint(CGPointMake(26.6, 32.03), controlPoint1: CGPointMake(26.5, 30.55), controlPoint2: CGPointMake(26.54, 31.25))
        bezier11Path.addLineToPoint(CGPointMake(24.29, 32.03))
        bezier11Path.addCurveToPoint(CGPointMake(24.17, 30.52), controlPoint1: CGPointMake(24.19, 31.5), controlPoint2: CGPointMake(24.19, 30.84))
        bezier11Path.addLineToPoint(CGPointMake(24.13, 30.52))
        bezier11Path.addCurveToPoint(CGPointMake(21.01, 32.27), controlPoint1: CGPointMake(23.52, 31.64), controlPoint2: CGPointMake(22.21, 32.27))
        bezier11Path.addCurveToPoint(CGPointMake(17.49, 29.27), controlPoint1: CGPointMake(19.23, 32.27), controlPoint2: CGPointMake(17.49, 31.19))
        bezier11Path.addCurveToPoint(CGPointMake(19.21, 26.39), controlPoint1: CGPointMake(17.49, 27.76), controlPoint2: CGPointMake(18.21, 26.88))
        bezier11Path.addCurveToPoint(CGPointMake(22.6, 25.8), controlPoint1: CGPointMake(20.21, 25.9), controlPoint2: CGPointMake(21.5, 25.8))
        bezier11Path.addLineToPoint(CGPointMake(24.05, 25.8))
        bezier11Path.addCurveToPoint(CGPointMake(21.78, 23.62), controlPoint1: CGPointMake(24.05, 24.17), controlPoint2: CGPointMake(23.33, 23.62))
        bezier11Path.addCurveToPoint(CGPointMake(18.66, 24.72), controlPoint1: CGPointMake(20.66, 23.62), controlPoint2: CGPointMake(19.54, 24.06))
        bezier11Path.addLineToPoint(CGPointMake(18.58, 22.47))
        bezier11Path.closePath()
        bezier11Path.moveToPoint(CGPointMake(21.66, 30.34))
        bezier11Path.addCurveToPoint(CGPointMake(23.5, 29.45), controlPoint1: CGPointMake(22.46, 30.34), controlPoint2: CGPointMake(23.09, 29.99))
        bezier11Path.addCurveToPoint(CGPointMake(24.05, 27.37), controlPoint1: CGPointMake(23.93, 28.88), controlPoint2: CGPointMake(24.05, 28.15))
        bezier11Path.addLineToPoint(CGPointMake(22.91, 27.37))
        bezier11Path.addCurveToPoint(CGPointMake(19.99, 29.12), controlPoint1: CGPointMake(21.74, 27.37), controlPoint2: CGPointMake(19.99, 27.56))
        bezier11Path.addCurveToPoint(CGPointMake(21.66, 30.34), controlPoint1: CGPointMake(19.99, 29.98), controlPoint2: CGPointMake(20.72, 30.34))
        bezier11Path.closePath()
        bezier11Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier11Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_11_,
            CGPointMake(-1.85, 15.43),
            CGPointMake(66.03, 48.54),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 12 Drawing
        var bezier12Path = UIBezierPath()
        bezier12Path.moveToPoint(CGPointMake(28.56, 17.33))
        bezier12Path.addLineToPoint(CGPointMake(31.19, 17.33))
        bezier12Path.addLineToPoint(CGPointMake(31.19, 23.23))
        bezier12Path.addLineToPoint(CGPointMake(31.23, 23.23))
        bezier12Path.addCurveToPoint(CGPointMake(34.24, 21.71), controlPoint1: CGPointMake(31.95, 22.28), controlPoint2: CGPointMake(32.87, 21.71))
        bezier12Path.addCurveToPoint(CGPointMake(38.48, 26.96), controlPoint1: CGPointMake(37.34, 21.71), controlPoint2: CGPointMake(38.48, 24.17))
        bezier12Path.addCurveToPoint(CGPointMake(34.24, 32.27), controlPoint1: CGPointMake(38.48, 29.72), controlPoint2: CGPointMake(37.34, 32.27))
        bezier12Path.addCurveToPoint(CGPointMake(31.15, 30.8), controlPoint1: CGPointMake(33.13, 32.27), controlPoint2: CGPointMake(31.91, 31.88))
        bezier12Path.addLineToPoint(CGPointMake(31.11, 30.8))
        bezier12Path.addLineToPoint(CGPointMake(31.11, 32.03))
        bezier12Path.addLineToPoint(CGPointMake(28.56, 32.03))
        bezier12Path.addLineToPoint(CGPointMake(28.56, 17.33))
        bezier12Path.closePath()
        bezier12Path.moveToPoint(CGPointMake(33.52, 30.23))
        bezier12Path.addCurveToPoint(CGPointMake(35.73, 26.96), controlPoint1: CGPointMake(35.24, 30.23), controlPoint2: CGPointMake(35.73, 28.35))
        bezier12Path.addCurveToPoint(CGPointMake(33.56, 23.75), controlPoint1: CGPointMake(35.73, 25.61), controlPoint2: CGPointMake(35.26, 23.75))
        bezier12Path.addCurveToPoint(CGPointMake(31.2, 26.96), controlPoint1: CGPointMake(31.87, 23.75), controlPoint2: CGPointMake(31.2, 25.55))
        bezier12Path.addCurveToPoint(CGPointMake(33.52, 30.23), controlPoint1: CGPointMake(31.2, 28.39), controlPoint2: CGPointMake(31.77, 30.23))
        bezier12Path.closePath()
        bezier12Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier12Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_12_,
            CGPointMake(0.6, 10.41),
            CGPointMake(68.48, 43.51),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 13 Drawing
        var bezier13Path = UIBezierPath()
        bezier13Path.moveToPoint(CGPointMake(48.16, 31.46))
        bezier13Path.addCurveToPoint(CGPointMake(44.69, 32.27), controlPoint1: CGPointMake(47.2, 31.99), controlPoint2: CGPointMake(46.1, 32.27))
        bezier13Path.addCurveToPoint(CGPointMake(39.42, 27.03), controlPoint1: CGPointMake(41.36, 32.27), controlPoint2: CGPointMake(39.42, 30.34))
        bezier13Path.addCurveToPoint(CGPointMake(44.1, 21.71), controlPoint1: CGPointMake(39.42, 24.12), controlPoint2: CGPointMake(40.97, 21.71))
        bezier13Path.addCurveToPoint(CGPointMake(48.9, 27.8), controlPoint1: CGPointMake(47.85, 21.71), controlPoint2: CGPointMake(48.9, 24.27))
        bezier13Path.addLineToPoint(CGPointMake(41.93, 27.8))
        bezier13Path.addCurveToPoint(CGPointMake(44.81, 30.34), controlPoint1: CGPointMake(42.05, 29.43), controlPoint2: CGPointMake(43.18, 30.34))
        bezier13Path.addCurveToPoint(CGPointMake(48.16, 29.33), controlPoint1: CGPointMake(46.08, 30.34), controlPoint2: CGPointMake(47.18, 29.88))
        bezier13Path.addLineToPoint(CGPointMake(48.16, 31.46))
        bezier13Path.closePath()
        bezier13Path.moveToPoint(CGPointMake(46.4, 25.99))
        bezier13Path.addCurveToPoint(CGPointMake(44.26, 23.62), controlPoint1: CGPointMake(46.32, 24.72), controlPoint2: CGPointMake(45.73, 23.62))
        bezier13Path.addCurveToPoint(CGPointMake(41.93, 25.99), controlPoint1: CGPointMake(42.79, 23.62), controlPoint2: CGPointMake(42.04, 24.64))
        bezier13Path.addLineToPoint(CGPointMake(46.4, 25.99))
        bezier13Path.closePath()
        bezier13Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier13Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_13_,
            CGPointMake(2.47, 6.58),
            CGPointMake(70.34, 39.69),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 14 Drawing
        var bezier14Path = UIBezierPath()
        bezier14Path.moveToPoint(CGPointMake(51.35, 23.86))
        bezier14Path.addLineToPoint(CGPointMake(49.41, 23.86))
        bezier14Path.addLineToPoint(CGPointMake(49.41, 21.94))
        bezier14Path.addLineToPoint(CGPointMake(51.35, 21.94))
        bezier14Path.addLineToPoint(CGPointMake(51.35, 19.92))
        bezier14Path.addLineToPoint(CGPointMake(53.98, 19.08))
        bezier14Path.addLineToPoint(CGPointMake(53.98, 21.94))
        bezier14Path.addLineToPoint(CGPointMake(56.31, 21.94))
        bezier14Path.addLineToPoint(CGPointMake(56.31, 23.86))
        bezier14Path.addLineToPoint(CGPointMake(53.98, 23.86))
        bezier14Path.addLineToPoint(CGPointMake(53.98, 28.56))
        bezier14Path.addCurveToPoint(CGPointMake(55.21, 30.23), controlPoint1: CGPointMake(53.98, 29.43), controlPoint2: CGPointMake(54.22, 30.23))
        bezier14Path.addCurveToPoint(CGPointMake(56.41, 29.95), controlPoint1: CGPointMake(55.68, 30.23), controlPoint2: CGPointMake(56.13, 30.13))
        bezier14Path.addLineToPoint(CGPointMake(56.49, 32.03))
        bezier14Path.addCurveToPoint(CGPointMake(54.55, 32.27), controlPoint1: CGPointMake(55.94, 32.19), controlPoint2: CGPointMake(55.33, 32.27))
        bezier14Path.addCurveToPoint(CGPointMake(51.35, 29), controlPoint1: CGPointMake(52.49, 32.27), controlPoint2: CGPointMake(51.35, 30.99))
        bezier14Path.addLineToPoint(CGPointMake(51.35, 23.86))
        bezier14Path.closePath()
        bezier14Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier14Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_14_,
            CGPointMake(4.81, 1.78),
            CGPointMake(72.69, 34.88),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 15 Drawing
        var bezier15Path = UIBezierPath()
        bezier15Path.moveToPoint(CGPointMake(65.74, 31.46))
        bezier15Path.addCurveToPoint(CGPointMake(62.27, 32.27), controlPoint1: CGPointMake(64.78, 31.99), controlPoint2: CGPointMake(63.68, 32.27))
        bezier15Path.addCurveToPoint(CGPointMake(57, 27.03), controlPoint1: CGPointMake(58.94, 32.27), controlPoint2: CGPointMake(57, 30.34))
        bezier15Path.addCurveToPoint(CGPointMake(61.68, 21.71), controlPoint1: CGPointMake(57, 24.12), controlPoint2: CGPointMake(58.55, 21.71))
        bezier15Path.addCurveToPoint(CGPointMake(66.48, 27.8), controlPoint1: CGPointMake(65.43, 21.71), controlPoint2: CGPointMake(66.48, 24.27))
        bezier15Path.addLineToPoint(CGPointMake(59.51, 27.8))
        bezier15Path.addCurveToPoint(CGPointMake(62.39, 30.34), controlPoint1: CGPointMake(59.63, 29.43), controlPoint2: CGPointMake(60.76, 30.34))
        bezier15Path.addCurveToPoint(CGPointMake(65.74, 29.33), controlPoint1: CGPointMake(63.66, 30.34), controlPoint2: CGPointMake(64.76, 29.88))
        bezier15Path.addLineToPoint(CGPointMake(65.74, 31.46))
        bezier15Path.addLineToPoint(CGPointMake(65.74, 31.46))
        bezier15Path.closePath()
        bezier15Path.moveToPoint(CGPointMake(63.98, 25.99))
        bezier15Path.addCurveToPoint(CGPointMake(61.84, 23.62), controlPoint1: CGPointMake(63.9, 24.72), controlPoint2: CGPointMake(63.31, 23.62))
        bezier15Path.addCurveToPoint(CGPointMake(59.51, 25.99), controlPoint1: CGPointMake(60.37, 23.62), controlPoint2: CGPointMake(59.63, 24.64))
        bezier15Path.addLineToPoint(CGPointMake(63.98, 25.99))
        bezier15Path.closePath()
        bezier15Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier15Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_15_,
            CGPointMake(5.84, -0.35),
            CGPointMake(73.72, 32.76),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        //// Bezier 16 Drawing
        var bezier16Path = UIBezierPath()
        bezier16Path.moveToPoint(CGPointMake(74.07, 24.06))
        bezier16Path.addCurveToPoint(CGPointMake(71.72, 23.62), controlPoint1: CGPointMake(73.27, 23.78), controlPoint2: CGPointMake(72.68, 23.62))
        bezier16Path.addCurveToPoint(CGPointMake(70.17, 24.74), controlPoint1: CGPointMake(71.01, 23.62), controlPoint2: CGPointMake(70.17, 23.88))
        bezier16Path.addCurveToPoint(CGPointMake(74.74, 28.97), controlPoint1: CGPointMake(70.17, 26.35), controlPoint2: CGPointMake(74.74, 25.33))
        bezier16Path.addCurveToPoint(CGPointMake(70.5, 32.27), controlPoint1: CGPointMake(74.74, 31.32), controlPoint2: CGPointMake(72.64, 32.27))
        bezier16Path.addCurveToPoint(CGPointMake(67.53, 31.83), controlPoint1: CGPointMake(69.5, 32.27), controlPoint2: CGPointMake(68.48, 32.09))
        bezier16Path.addLineToPoint(CGPointMake(67.68, 29.68))
        bezier16Path.addCurveToPoint(CGPointMake(70.27, 30.34), controlPoint1: CGPointMake(68.5, 30.09), controlPoint2: CGPointMake(69.37, 30.34))
        bezier16Path.addCurveToPoint(CGPointMake(71.99, 29.11), controlPoint1: CGPointMake(70.94, 30.34), controlPoint2: CGPointMake(71.99, 30.09))
        bezier16Path.addCurveToPoint(CGPointMake(67.43, 24.84), controlPoint1: CGPointMake(71.99, 27.13), controlPoint2: CGPointMake(67.43, 28.48))
        bezier16Path.addCurveToPoint(CGPointMake(71.39, 21.7), controlPoint1: CGPointMake(67.43, 22.66), controlPoint2: CGPointMake(69.33, 21.7))
        bezier16Path.addCurveToPoint(CGPointMake(74.25, 22.07), controlPoint1: CGPointMake(72.62, 21.7), controlPoint2: CGPointMake(73.42, 21.9))
        bezier16Path.addLineToPoint(CGPointMake(74.07, 24.06))
        bezier16Path.closePath()
        bezier16Path.miterLimit = 4;
        
        CGContextSaveGState(context)
        bezier16Path.addClip()
        CGContextDrawLinearGradient(context, sVGID_16_,
            CGPointMake(7.6, -3.92),
            CGPointMake(75.46, 29.18),
            UInt32(kCGGradientDrawsBeforeStartLocation) | UInt32(kCGGradientDrawsAfterEndLocation))
        CGContextRestoreGState(context)
        
        
        
        
        
        
        
        
        //// Group 5
        //// Group 6
        //// Bezier 17 Drawing
        var bezier17Path = UIBezierPath()
        bezier17Path.moveToPoint(CGPointMake(76.97, 23.52))
        bezier17Path.addCurveToPoint(CGPointMake(78.77, 21.71), controlPoint1: CGPointMake(76.97, 22.52), controlPoint2: CGPointMake(77.77, 21.71))
        bezier17Path.addLineToPoint(CGPointMake(78.77, 21.71))
        bezier17Path.addCurveToPoint(CGPointMake(80.58, 23.52), controlPoint1: CGPointMake(79.77, 21.71), controlPoint2: CGPointMake(80.58, 22.52))
        bezier17Path.addLineToPoint(CGPointMake(80.58, 23.52))
        bezier17Path.addCurveToPoint(CGPointMake(78.77, 25.32), controlPoint1: CGPointMake(80.58, 24.51), controlPoint2: CGPointMake(79.77, 25.32))
        bezier17Path.addLineToPoint(CGPointMake(78.77, 25.32))
        bezier17Path.addCurveToPoint(CGPointMake(76.97, 23.52), controlPoint1: CGPointMake(77.77, 25.32), controlPoint2: CGPointMake(76.97, 24.51))
        bezier17Path.addLineToPoint(CGPointMake(76.97, 23.52))
        bezier17Path.closePath()
        bezier17Path.moveToPoint(CGPointMake(77.2, 23.52))
        bezier17Path.addCurveToPoint(CGPointMake(78.77, 25.08), controlPoint1: CGPointMake(77.2, 24.38), controlPoint2: CGPointMake(77.91, 25.08))
        bezier17Path.addLineToPoint(CGPointMake(78.77, 25.08))
        bezier17Path.addCurveToPoint(CGPointMake(80.34, 23.52), controlPoint1: CGPointMake(79.64, 25.08), controlPoint2: CGPointMake(80.34, 24.38))
        bezier17Path.addLineToPoint(CGPointMake(80.34, 23.52))
        bezier17Path.addCurveToPoint(CGPointMake(78.77, 21.95), controlPoint1: CGPointMake(80.34, 22.65), controlPoint2: CGPointMake(79.64, 21.95))
        bezier17Path.addLineToPoint(CGPointMake(78.77, 21.95))
        bezier17Path.addCurveToPoint(CGPointMake(77.2, 23.52), controlPoint1: CGPointMake(77.91, 21.95), controlPoint2: CGPointMake(77.2, 22.65))
        bezier17Path.addLineToPoint(CGPointMake(77.2, 23.52))
        bezier17Path.closePath()
        bezier17Path.miterLimit = 4;
        
        color0.setFill()
        bezier17Path.fill()
        
        
        //// Group 7
        //// Bezier 18 Drawing
        var bezier18Path = UIBezierPath()
        bezier18Path.moveToPoint(CGPointMake(78.16, 22.42))
        bezier18Path.addCurveToPoint(CGPointMake(78.68, 22.37), controlPoint1: CGPointMake(78.29, 22.4), controlPoint2: CGPointMake(78.5, 22.37))
        bezier18Path.addCurveToPoint(CGPointMake(79.3, 22.55), controlPoint1: CGPointMake(78.98, 22.37), controlPoint2: CGPointMake(79.17, 22.43))
        bezier18Path.addCurveToPoint(CGPointMake(79.47, 22.95), controlPoint1: CGPointMake(79.4, 22.63), controlPoint2: CGPointMake(79.47, 22.78))
        bezier18Path.addCurveToPoint(CGPointMake(79.07, 23.48), controlPoint1: CGPointMake(79.47, 23.23), controlPoint2: CGPointMake(79.29, 23.41))
        bezier18Path.addLineToPoint(CGPointMake(79.07, 23.5))
        bezier18Path.addCurveToPoint(CGPointMake(79.38, 23.92), controlPoint1: CGPointMake(79.23, 23.55), controlPoint2: CGPointMake(79.33, 23.7))
        bezier18Path.addCurveToPoint(CGPointMake(79.55, 24.5), controlPoint1: CGPointMake(79.46, 24.22), controlPoint2: CGPointMake(79.51, 24.42))
        bezier18Path.addLineToPoint(CGPointMake(79.26, 24.51))
        bezier18Path.addCurveToPoint(CGPointMake(79.12, 24), controlPoint1: CGPointMake(79.23, 24.45), controlPoint2: CGPointMake(79.18, 24.26))
        bezier18Path.addCurveToPoint(CGPointMake(78.69, 23.59), controlPoint1: CGPointMake(79.06, 23.71), controlPoint2: CGPointMake(78.94, 23.6))
        bezier18Path.addLineToPoint(CGPointMake(78.43, 23.59))
        bezier18Path.addLineToPoint(CGPointMake(78.44, 24.51))
        bezier18Path.addLineToPoint(CGPointMake(78.16, 24.51))
        bezier18Path.addLineToPoint(CGPointMake(78.16, 22.42))
        bezier18Path.closePath()
        bezier18Path.moveToPoint(CGPointMake(78.44, 23.39))
        bezier18Path.addLineToPoint(CGPointMake(78.72, 23.38))
        bezier18Path.addCurveToPoint(CGPointMake(79.19, 22.98), controlPoint1: CGPointMake(79.01, 23.38), controlPoint2: CGPointMake(79.19, 23.22))
        bezier18Path.addCurveToPoint(CGPointMake(78.7, 22.58), controlPoint1: CGPointMake(79.19, 22.7), controlPoint2: CGPointMake(79, 22.58))
        bezier18Path.addCurveToPoint(CGPointMake(78.43, 22.61), controlPoint1: CGPointMake(78.57, 22.59), controlPoint2: CGPointMake(78.48, 22.6))
        bezier18Path.addLineToPoint(CGPointMake(78.44, 23.39))
        bezier18Path.closePath()
        bezier18Path.miterLimit = 4;
        
        color0.setFill()
        bezier18Path.fill()

    }
    

}
