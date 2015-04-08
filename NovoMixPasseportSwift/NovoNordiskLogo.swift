//
//  NovoNordiskLogo.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 4/1/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class NovoNordiskLogo: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        //// Color Declarations
        let color0 = UIColor(red: 0.127, green: 0.163, blue: 0.375, alpha: 1.000)
        let color1 = UIColor(red: 0.093, green: 0.555, blue: 0.825, alpha: 1.000)
        
        //// Group
        //// Group 2
        //// Bezier Drawing
        var bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(26.33, 11.74))
        bezierPath.addCurveToPoint(CGPointMake(27.02, 11.24), controlPoint1: CGPointMake(26.65, 11.53), controlPoint2: CGPointMake(26.88, 11.34))
        bezierPath.addCurveToPoint(CGPointMake(27.29, 11.92), controlPoint1: CGPointMake(27.63, 10.74), controlPoint2: CGPointMake(27.84, 11.02))
        bezierPath.addCurveToPoint(CGPointMake(24.01, 14.53), controlPoint1: CGPointMake(26.56, 13.1), controlPoint2: CGPointMake(25.4, 13.83))
        bezierPath.addCurveToPoint(CGPointMake(24.04, 15.1), controlPoint1: CGPointMake(23.73, 14.67), controlPoint2: CGPointMake(23.41, 14.79))
        bezierPath.addCurveToPoint(CGPointMake(27.05, 16.21), controlPoint1: CGPointMake(24.57, 15.35), controlPoint2: CGPointMake(25.89, 15.88))
        bezierPath.addCurveToPoint(CGPointMake(36.53, 17.96), controlPoint1: CGPointMake(27.72, 16.4), controlPoint2: CGPointMake(32.23, 17.97))
        bezierPath.addCurveToPoint(CGPointMake(44.04, 17.41), controlPoint1: CGPointMake(39.64, 17.95), controlPoint2: CGPointMake(42.44, 17.54))
        bezierPath.addCurveToPoint(CGPointMake(49.17, 19.42), controlPoint1: CGPointMake(45.25, 17.31), controlPoint2: CGPointMake(47.87, 17.07))
        bezierPath.addCurveToPoint(CGPointMake(50.09, 28.89), controlPoint1: CGPointMake(50.27, 21.38), controlPoint2: CGPointMake(50.03, 27.49))
        bezierPath.addCurveToPoint(CGPointMake(50.08, 38.77), controlPoint1: CGPointMake(50.13, 29.89), controlPoint2: CGPointMake(50.09, 38.06))
        bezierPath.addCurveToPoint(CGPointMake(49.68, 39.67), controlPoint1: CGPointMake(50.08, 39.26), controlPoint2: CGPointMake(50.04, 39.62))
        bezierPath.addCurveToPoint(CGPointMake(48.24, 39.69), controlPoint1: CGPointMake(49.35, 39.71), controlPoint2: CGPointMake(48.41, 39.69))
        bezierPath.addCurveToPoint(CGPointMake(47.48, 39.68), controlPoint1: CGPointMake(48.14, 39.69), controlPoint2: CGPointMake(47.78, 39.68))
        bezierPath.addCurveToPoint(CGPointMake(46.96, 40.07), controlPoint1: CGPointMake(46.95, 39.68), controlPoint2: CGPointMake(46.96, 39.93))
        bezierPath.addCurveToPoint(CGPointMake(46.4, 40.74), controlPoint1: CGPointMake(46.96, 40.37), controlPoint2: CGPointMake(47.07, 40.71))
        bezierPath.addCurveToPoint(CGPointMake(44.22, 40.74), controlPoint1: CGPointMake(45.92, 40.75), controlPoint2: CGPointMake(44.41, 40.74))
        bezierPath.addCurveToPoint(CGPointMake(43.99, 39.81), controlPoint1: CGPointMake(43.89, 40.74), controlPoint2: CGPointMake(43.71, 40.33))
        bezierPath.addCurveToPoint(CGPointMake(44.93, 28.87), controlPoint1: CGPointMake(46.77, 34.8), controlPoint2: CGPointMake(46.57, 30.99))
        bezierPath.addCurveToPoint(CGPointMake(44.63, 30.02), controlPoint1: CGPointMake(44.82, 29.26), controlPoint2: CGPointMake(44.72, 29.58))
        bezierPath.addCurveToPoint(CGPointMake(43.93, 31.9), controlPoint1: CGPointMake(44.42, 31.18), controlPoint2: CGPointMake(44.18, 31.69))
        bezierPath.addCurveToPoint(CGPointMake(38.94, 39.54), controlPoint1: CGPointMake(41.02, 34.25), controlPoint2: CGPointMake(39.62, 37.73))
        bezierPath.addCurveToPoint(CGPointMake(38.39, 39.95), controlPoint1: CGPointMake(38.8, 39.92), controlPoint2: CGPointMake(38.52, 39.77))
        bezierPath.addCurveToPoint(CGPointMake(37.78, 40.73), controlPoint1: CGPointMake(38.19, 40.21), controlPoint2: CGPointMake(38.63, 40.7))
        bezierPath.addCurveToPoint(CGPointMake(35.42, 40.74), controlPoint1: CGPointMake(37.43, 40.74), controlPoint2: CGPointMake(35.76, 40.74))
        bezierPath.addCurveToPoint(CGPointMake(35.19, 39.77), controlPoint1: CGPointMake(35.02, 40.74), controlPoint2: CGPointMake(34.8, 40.26))
        bezierPath.addCurveToPoint(CGPointMake(40.93, 28.86), controlPoint1: CGPointMake(36.09, 38.68), controlPoint2: CGPointMake(41.19, 33.87))
        bezierPath.addCurveToPoint(CGPointMake(40.56, 27.38), controlPoint1: CGPointMake(40.92, 28.64), controlPoint2: CGPointMake(40.77, 27.58))
        bezierPath.addCurveToPoint(CGPointMake(37.83, 28.11), controlPoint1: CGPointMake(40.52, 27.33), controlPoint2: CGPointMake(39.67, 26.6))
        bezierPath.addCurveToPoint(CGPointMake(37.34, 28.07), controlPoint1: CGPointMake(37.62, 28.28), controlPoint2: CGPointMake(37.6, 28.22))
        bezierPath.addCurveToPoint(CGPointMake(33.21, 27.6), controlPoint1: CGPointMake(37.05, 27.91), controlPoint2: CGPointMake(34.83, 27.11))
        bezierPath.addCurveToPoint(CGPointMake(31.43, 31.18), controlPoint1: CGPointMake(32.18, 27.89), controlPoint2: CGPointMake(30.97, 29.17))
        bezierPath.addCurveToPoint(CGPointMake(34.1, 39.34), controlPoint1: CGPointMake(32.08, 34.03), controlPoint2: CGPointMake(33.54, 36.47))
        bezierPath.addCurveToPoint(CGPointMake(33.66, 39.92), controlPoint1: CGPointMake(34.18, 39.86), controlPoint2: CGPointMake(33.82, 39.73))
        bezierPath.addCurveToPoint(CGPointMake(33, 40.73), controlPoint1: CGPointMake(33.45, 40.19), controlPoint2: CGPointMake(33.9, 40.73))
        bezierPath.addCurveToPoint(CGPointMake(30.74, 40.73), controlPoint1: CGPointMake(32.72, 40.73), controlPoint2: CGPointMake(30.74, 40.73))
        bezierPath.addCurveToPoint(CGPointMake(30.37, 39.67), controlPoint1: CGPointMake(30.32, 40.75), controlPoint2: CGPointMake(30.09, 40.56))
        bezierPath.addCurveToPoint(CGPointMake(30.63, 38.06), controlPoint1: CGPointMake(30.45, 39.41), controlPoint2: CGPointMake(30.53, 38.98))
        bezierPath.addCurveToPoint(CGPointMake(30.47, 35.33), controlPoint1: CGPointMake(30.72, 37.21), controlPoint2: CGPointMake(30.63, 36.33))
        bezierPath.addCurveToPoint(CGPointMake(26.7, 29.51), controlPoint1: CGPointMake(29.95, 32.08), controlPoint2: CGPointMake(28.18, 30.48))
        bezierPath.addCurveToPoint(CGPointMake(23.64, 38.35), controlPoint1: CGPointMake(25.7, 30.14), controlPoint2: CGPointMake(24.09, 35.05))
        bezierPath.addCurveToPoint(CGPointMake(23.54, 39.14), controlPoint1: CGPointMake(23.56, 38.88), controlPoint2: CGPointMake(23.55, 39))
        bezierPath.addCurveToPoint(CGPointMake(22.85, 39.91), controlPoint1: CGPointMake(23.48, 39.97), controlPoint2: CGPointMake(22.99, 39.67))
        bezierPath.addCurveToPoint(CGPointMake(22.15, 40.74), controlPoint1: CGPointMake(22.66, 40.23), controlPoint2: CGPointMake(23.04, 40.74))
        bezierPath.addCurveToPoint(CGPointMake(20.01, 40.74), controlPoint1: CGPointMake(21.08, 40.74), controlPoint2: CGPointMake(20.51, 40.74))
        bezierPath.addCurveToPoint(CGPointMake(19.84, 39.68), controlPoint1: CGPointMake(19.58, 40.73), controlPoint2: CGPointMake(19.52, 40.26))
        bezierPath.addCurveToPoint(CGPointMake(23.28, 29.43), controlPoint1: CGPointMake(21.19, 37.25), controlPoint2: CGPointMake(23.32, 33.49))
        bezierPath.addCurveToPoint(CGPointMake(22.64, 26.79), controlPoint1: CGPointMake(23.28, 28.96), controlPoint2: CGPointMake(23.29, 27.57))
        bezierPath.addCurveToPoint(CGPointMake(19.62, 21.63), controlPoint1: CGPointMake(21.18, 25.06), controlPoint2: CGPointMake(20.37, 22.97))
        bezierPath.addCurveToPoint(CGPointMake(17.85, 20.33), controlPoint1: CGPointMake(19.1, 20.7), controlPoint2: CGPointMake(18.35, 20.49))
        bezierPath.addCurveToPoint(CGPointMake(16.37, 20.08), controlPoint1: CGPointMake(17.36, 20.18), controlPoint2: CGPointMake(16.93, 20.39))
        bezierPath.addCurveToPoint(CGPointMake(15.44, 19.05), controlPoint1: CGPointMake(16.22, 19.99), controlPoint2: CGPointMake(15.81, 19.46))
        bezierPath.addCurveToPoint(CGPointMake(15.28, 17.75), controlPoint1: CGPointMake(15.13, 18.7), controlPoint2: CGPointMake(14.91, 18.21))
        bezierPath.addCurveToPoint(CGPointMake(16.53, 15.88), controlPoint1: CGPointMake(15.92, 16.93), controlPoint2: CGPointMake(16.45, 16.4))
        bezierPath.addCurveToPoint(CGPointMake(16.57, 15.36), controlPoint1: CGPointMake(16.55, 15.76), controlPoint2: CGPointMake(16.52, 15.49))
        bezierPath.addCurveToPoint(CGPointMake(17.67, 13.81), controlPoint1: CGPointMake(16.72, 14.96), controlPoint2: CGPointMake(17.27, 14.3))
        bezierPath.addCurveToPoint(CGPointMake(17.35, 12.77), controlPoint1: CGPointMake(17.86, 13.58), controlPoint2: CGPointMake(17.7, 13.18))
        bezierPath.addCurveToPoint(CGPointMake(15.96, 8.58), controlPoint1: CGPointMake(17, 12.37), controlPoint2: CGPointMake(15.96, 10.94))
        bezierPath.addCurveToPoint(CGPointMake(16.52, 8.33), controlPoint1: CGPointMake(15.96, 7.65), controlPoint2: CGPointMake(16.29, 7.7))
        bezierPath.addCurveToPoint(CGPointMake(20.71, 12.54), controlPoint1: CGPointMake(16.75, 8.97), controlPoint2: CGPointMake(17.75, 11.75))
        bezierPath.addCurveToPoint(CGPointMake(26.33, 11.74), controlPoint1: CGPointMake(23.49, 13.28), controlPoint2: CGPointMake(25.32, 12.48))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(47.96, 21.18))
        bezierPath.addCurveToPoint(CGPointMake(47.84, 23.93), controlPoint1: CGPointMake(47.95, 21.33), controlPoint2: CGPointMake(48, 22.27))
        bezierPath.addCurveToPoint(CGPointMake(47.64, 26.53), controlPoint1: CGPointMake(47.74, 24.95), controlPoint2: CGPointMake(47.48, 25.73))
        bezierPath.addCurveToPoint(CGPointMake(48.39, 30.08), controlPoint1: CGPointMake(47.79, 27.32), controlPoint2: CGPointMake(48.21, 29.85))
        bezierPath.addCurveToPoint(CGPointMake(48.79, 29.95), controlPoint1: CGPointMake(48.56, 30.29), controlPoint2: CGPointMake(48.79, 30.14))
        bezierPath.addCurveToPoint(CGPointMake(48.45, 21.37), controlPoint1: CGPointMake(48.79, 29.81), controlPoint2: CGPointMake(49.05, 23.05))
        bezierPath.addCurveToPoint(CGPointMake(47.96, 21.18), controlPoint1: CGPointMake(48.25, 20.81), controlPoint2: CGPointMake(48, 20.77))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;
        
        color0.setFill()
        bezierPath.fill()
        
        
        //// Group 3
        //// Group 4
        //// Group 5
        //// Bezier 2 Drawing
        var bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(34.66, 50.18))
        bezier2Path.addLineToPoint(CGPointMake(34.66, 45.61))
        bezier2Path.addCurveToPoint(CGPointMake(31.98, 43.43), controlPoint1: CGPointMake(34.66, 44.84), controlPoint2: CGPointMake(34.64, 43.43))
        bezier2Path.addCurveToPoint(CGPointMake(29.92, 43.75), controlPoint1: CGPointMake(30.97, 43.43), controlPoint2: CGPointMake(30.29, 43.63))
        bezier2Path.addCurveToPoint(CGPointMake(29.32, 44.29), controlPoint1: CGPointMake(29.47, 43.89), controlPoint2: CGPointMake(29.32, 44.07))
        bezier2Path.addLineToPoint(CGPointMake(29.32, 50.2))
        bezier2Path.addCurveToPoint(CGPointMake(29.57, 50.45), controlPoint1: CGPointMake(29.32, 50.42), controlPoint2: CGPointMake(29.38, 50.45))
        bezier2Path.addLineToPoint(CGPointMake(30.22, 50.45))
        bezier2Path.addCurveToPoint(CGPointMake(30.5, 50.18), controlPoint1: CGPointMake(30.4, 50.45), controlPoint2: CGPointMake(30.5, 50.42))
        bezier2Path.addLineToPoint(CGPointMake(30.5, 44.75))
        bezier2Path.addCurveToPoint(CGPointMake(31.93, 44.15), controlPoint1: CGPointMake(30.5, 44.45), controlPoint2: CGPointMake(31, 44.15))
        bezier2Path.addCurveToPoint(CGPointMake(33.47, 45.76), controlPoint1: CGPointMake(33.47, 44.15), controlPoint2: CGPointMake(33.47, 45.14))
        bezier2Path.addLineToPoint(CGPointMake(33.47, 50.18))
        bezier2Path.addCurveToPoint(CGPointMake(33.77, 50.45), controlPoint1: CGPointMake(33.47, 50.42), controlPoint2: CGPointMake(33.56, 50.45))
        bezier2Path.addLineToPoint(CGPointMake(34.5, 50.45))
        bezier2Path.addCurveToPoint(CGPointMake(34.66, 50.18), controlPoint1: CGPointMake(34.64, 50.42), controlPoint2: CGPointMake(34.66, 50.3))
        bezier2Path.closePath()
        bezier2Path.miterLimit = 4;
        
        color0.setFill()
        bezier2Path.fill()
        
        
        
        
        //// Bezier 3 Drawing
        var bezier3Path = UIBezierPath()
        bezier3Path.moveToPoint(CGPointMake(41.67, 47.05))
        bezier3Path.addCurveToPoint(CGPointMake(40.39, 43.92), controlPoint1: CGPointMake(41.67, 45.46), controlPoint2: CGPointMake(41.16, 44.44))
        bezier3Path.addCurveToPoint(CGPointMake(38.67, 43.43), controlPoint1: CGPointMake(39.92, 43.59), controlPoint2: CGPointMake(39.28, 43.43))
        bezier3Path.addCurveToPoint(CGPointMake(36.95, 43.92), controlPoint1: CGPointMake(38.07, 43.43), controlPoint2: CGPointMake(37.43, 43.59))
        bezier3Path.addCurveToPoint(CGPointMake(35.68, 47.05), controlPoint1: CGPointMake(36.18, 44.44), controlPoint2: CGPointMake(35.68, 45.46))
        bezier3Path.addCurveToPoint(CGPointMake(36.95, 50.16), controlPoint1: CGPointMake(35.68, 48.63), controlPoint2: CGPointMake(36.18, 49.64))
        bezier3Path.addCurveToPoint(CGPointMake(38.67, 50.65), controlPoint1: CGPointMake(37.43, 50.49), controlPoint2: CGPointMake(38.07, 50.65))
        bezier3Path.addCurveToPoint(CGPointMake(40.39, 50.16), controlPoint1: CGPointMake(39.28, 50.65), controlPoint2: CGPointMake(39.92, 50.49))
        bezier3Path.addCurveToPoint(CGPointMake(41.67, 47.05), controlPoint1: CGPointMake(41.16, 49.64), controlPoint2: CGPointMake(41.67, 48.63))
        bezier3Path.closePath()
        bezier3Path.moveToPoint(CGPointMake(40.45, 47.05))
        bezier3Path.addCurveToPoint(CGPointMake(39.83, 49.45), controlPoint1: CGPointMake(40.45, 48.29), controlPoint2: CGPointMake(40.19, 49.1))
        bezier3Path.addCurveToPoint(CGPointMake(38.67, 49.88), controlPoint1: CGPointMake(39.47, 49.79), controlPoint2: CGPointMake(39.13, 49.88))
        bezier3Path.addCurveToPoint(CGPointMake(37.52, 49.45), controlPoint1: CGPointMake(38.21, 49.88), controlPoint2: CGPointMake(37.88, 49.79))
        bezier3Path.addCurveToPoint(CGPointMake(36.9, 47.05), controlPoint1: CGPointMake(37.15, 49.1), controlPoint2: CGPointMake(36.9, 48.29))
        bezier3Path.addCurveToPoint(CGPointMake(37.52, 44.63), controlPoint1: CGPointMake(36.9, 45.78), controlPoint2: CGPointMake(37.15, 44.98))
        bezier3Path.addCurveToPoint(CGPointMake(38.67, 44.2), controlPoint1: CGPointMake(37.88, 44.29), controlPoint2: CGPointMake(38.21, 44.2))
        bezier3Path.addCurveToPoint(CGPointMake(39.83, 44.63), controlPoint1: CGPointMake(39.13, 44.2), controlPoint2: CGPointMake(39.47, 44.29))
        bezier3Path.addCurveToPoint(CGPointMake(40.45, 47.05), controlPoint1: CGPointMake(40.19, 44.98), controlPoint2: CGPointMake(40.45, 45.78))
        bezier3Path.closePath()
        bezier3Path.miterLimit = 4;
        
        color0.setFill()
        bezier3Path.fill()
        
        
        //// Group 6
        //// Bezier 4 Drawing
        var bezier4Path = UIBezierPath()
        bezier4Path.moveToPoint(CGPointMake(46.39, 44.12))
        bezier4Path.addCurveToPoint(CGPointMake(44.67, 43.43), controlPoint1: CGPointMake(46.39, 43.64), controlPoint2: CGPointMake(45.58, 43.43))
        bezier4Path.addCurveToPoint(CGPointMake(43.15, 43.64), controlPoint1: CGPointMake(43.95, 43.43), controlPoint2: CGPointMake(43.5, 43.55))
        bezier4Path.addCurveToPoint(CGPointMake(42.55, 44.18), controlPoint1: CGPointMake(42.71, 43.76), controlPoint2: CGPointMake(42.55, 43.96))
        bezier4Path.addLineToPoint(CGPointMake(42.55, 50.23))
        bezier4Path.addCurveToPoint(CGPointMake(42.81, 50.45), controlPoint1: CGPointMake(42.55, 50.44), controlPoint2: CGPointMake(42.63, 50.45))
        bezier4Path.addLineToPoint(CGPointMake(43.49, 50.45))
        bezier4Path.addCurveToPoint(CGPointMake(43.73, 50.23), controlPoint1: CGPointMake(43.65, 50.45), controlPoint2: CGPointMake(43.73, 50.44))
        bezier4Path.addLineToPoint(CGPointMake(43.73, 44.69))
        bezier4Path.addCurveToPoint(CGPointMake(44.4, 44.09), controlPoint1: CGPointMake(43.73, 44.33), controlPoint2: CGPointMake(44.01, 44.09))
        bezier4Path.addCurveToPoint(CGPointMake(45.83, 44.71), controlPoint1: CGPointMake(45.25, 44.09), controlPoint2: CGPointMake(45.38, 44.71))
        bezier4Path.addCurveToPoint(CGPointMake(46.39, 44.12), controlPoint1: CGPointMake(46.14, 44.71), controlPoint2: CGPointMake(46.39, 44.5))
        bezier4Path.closePath()
        bezier4Path.miterLimit = 4;
        
        color0.setFill()
        bezier4Path.fill()
        
        
        
        
        //// Bezier 5 Drawing
        var bezier5Path = UIBezierPath()
        bezier5Path.moveToPoint(CGPointMake(52.22, 49.72))
        bezier5Path.addLineToPoint(CGPointMake(52.22, 41.41))
        bezier5Path.addCurveToPoint(CGPointMake(51.95, 41.14), controlPoint1: CGPointMake(52.22, 41.17), controlPoint2: CGPointMake(52.15, 41.14))
        bezier5Path.addLineToPoint(CGPointMake(51.3, 41.14))
        bezier5Path.addCurveToPoint(CGPointMake(51.05, 41.43), controlPoint1: CGPointMake(51.08, 41.14), controlPoint2: CGPointMake(51.05, 41.22))
        bezier5Path.addLineToPoint(CGPointMake(51.05, 43.83))
        bezier5Path.addCurveToPoint(CGPointMake(49.6, 43.47), controlPoint1: CGPointMake(50.64, 43.62), controlPoint2: CGPointMake(50.23, 43.47))
        bezier5Path.addCurveToPoint(CGPointMake(46.5, 47.05), controlPoint1: CGPointMake(47.55, 43.47), controlPoint2: CGPointMake(46.5, 45.42))
        bezier5Path.addCurveToPoint(CGPointMake(49.85, 50.65), controlPoint1: CGPointMake(46.5, 49.46), controlPoint2: CGPointMake(47.83, 50.65))
        bezier5Path.addCurveToPoint(CGPointMake(52.22, 49.72), controlPoint1: CGPointMake(50.84, 50.65), controlPoint2: CGPointMake(52.22, 50.16))
        bezier5Path.closePath()
        bezier5Path.moveToPoint(CGPointMake(51.05, 49.34))
        bezier5Path.addCurveToPoint(CGPointMake(49.88, 49.87), controlPoint1: CGPointMake(51.05, 49.68), controlPoint2: CGPointMake(50.49, 49.87))
        bezier5Path.addCurveToPoint(CGPointMake(47.69, 46.95), controlPoint1: CGPointMake(48.6, 49.87), controlPoint2: CGPointMake(47.69, 48.8))
        bezier5Path.addCurveToPoint(CGPointMake(49.78, 44.27), controlPoint1: CGPointMake(47.69, 45.35), controlPoint2: CGPointMake(48.56, 44.27))
        bezier5Path.addCurveToPoint(CGPointMake(51.05, 44.7), controlPoint1: CGPointMake(50.47, 44.27), controlPoint2: CGPointMake(50.8, 44.49))
        bezier5Path.addLineToPoint(CGPointMake(51.05, 49.34))
        bezier5Path.closePath()
        bezier5Path.miterLimit = 4;
        
        color0.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        var bezier6Path = UIBezierPath()
        bezier6Path.moveToPoint(CGPointMake(55.09, 41.68))
        bezier6Path.addCurveToPoint(CGPointMake(54.39, 41.02), controlPoint1: CGPointMake(55.08, 41.29), controlPoint2: CGPointMake(54.76, 41.02))
        bezier6Path.addCurveToPoint(CGPointMake(53.66, 41.72), controlPoint1: CGPointMake(53.97, 41.02), controlPoint2: CGPointMake(53.66, 41.31))
        bezier6Path.addCurveToPoint(CGPointMake(54.37, 42.41), controlPoint1: CGPointMake(53.66, 42.09), controlPoint2: CGPointMake(53.93, 42.41))
        bezier6Path.addCurveToPoint(CGPointMake(55.09, 41.68), controlPoint1: CGPointMake(54.83, 42.41), controlPoint2: CGPointMake(55.1, 42.05))
        bezier6Path.closePath()
        bezier6Path.moveToPoint(CGPointMake(54.96, 50.21))
        bezier6Path.addLineToPoint(CGPointMake(54.96, 43.84))
        bezier6Path.addCurveToPoint(CGPointMake(54.69, 43.59), controlPoint1: CGPointMake(54.96, 43.63), controlPoint2: CGPointMake(54.91, 43.59))
        bezier6Path.addLineToPoint(CGPointMake(54.01, 43.59))
        bezier6Path.addCurveToPoint(CGPointMake(53.78, 43.84), controlPoint1: CGPointMake(53.78, 43.59), controlPoint2: CGPointMake(53.78, 43.67))
        bezier6Path.addLineToPoint(CGPointMake(53.78, 50.21))
        bezier6Path.addCurveToPoint(CGPointMake(53.98, 50.45), controlPoint1: CGPointMake(53.78, 50.4), controlPoint2: CGPointMake(53.78, 50.45))
        bezier6Path.addLineToPoint(CGPointMake(54.69, 50.45))
        bezier6Path.addCurveToPoint(CGPointMake(54.96, 50.21), controlPoint1: CGPointMake(54.89, 50.45), controlPoint2: CGPointMake(54.96, 50.44))
        bezier6Path.closePath()
        bezier6Path.miterLimit = 4;
        
        color0.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        var bezier7Path = UIBezierPath()
        bezier7Path.moveToPoint(CGPointMake(66.71, 50.3))
        bezier7Path.addCurveToPoint(CGPointMake(66.62, 50.13), controlPoint1: CGPointMake(66.71, 50.24), controlPoint2: CGPointMake(66.67, 50.2))
        bezier7Path.addLineToPoint(CGPointMake(64.1, 46.81))
        bezier7Path.addLineToPoint(CGPointMake(64.09, 46.79))
        bezier7Path.addCurveToPoint(CGPointMake(66.45, 44), controlPoint1: CGPointMake(64.97, 46.15), controlPoint2: CGPointMake(65.89, 45.11))
        bezier7Path.addCurveToPoint(CGPointMake(66.52, 43.73), controlPoint1: CGPointMake(66.51, 43.87), controlPoint2: CGPointMake(66.52, 43.81))
        bezier7Path.addCurveToPoint(CGPointMake(66.28, 43.59), controlPoint1: CGPointMake(66.52, 43.62), controlPoint2: CGPointMake(66.46, 43.59))
        bezier7Path.addLineToPoint(CGPointMake(65.66, 43.59))
        bezier7Path.addCurveToPoint(CGPointMake(65.25, 43.79), controlPoint1: CGPointMake(65.42, 43.59), controlPoint2: CGPointMake(65.32, 43.58))
        bezier7Path.addCurveToPoint(CGPointMake(62.91, 46.73), controlPoint1: CGPointMake(64.88, 44.93), controlPoint2: CGPointMake(63.91, 46.15))
        bezier7Path.addCurveToPoint(CGPointMake(62.86, 46.81), controlPoint1: CGPointMake(62.87, 46.75), controlPoint2: CGPointMake(62.86, 46.79))
        bezier7Path.addCurveToPoint(CGPointMake(62.89, 46.88), controlPoint1: CGPointMake(62.86, 46.83), controlPoint2: CGPointMake(62.87, 46.86))
        bezier7Path.addLineToPoint(CGPointMake(65.24, 50.25))
        bezier7Path.addCurveToPoint(CGPointMake(65.64, 50.45), controlPoint1: CGPointMake(65.38, 50.45), controlPoint2: CGPointMake(65.42, 50.45))
        bezier7Path.addLineToPoint(CGPointMake(66.54, 50.45))
        bezier7Path.addCurveToPoint(CGPointMake(66.71, 50.3), controlPoint1: CGPointMake(66.58, 50.45), controlPoint2: CGPointMake(66.71, 50.44))
        bezier7Path.closePath()
        bezier7Path.moveToPoint(CGPointMake(62.67, 50.25))
        bezier7Path.addLineToPoint(CGPointMake(62.67, 41.29))
        bezier7Path.addCurveToPoint(CGPointMake(62.42, 41.1), controlPoint1: CGPointMake(62.67, 41.1), controlPoint2: CGPointMake(62.58, 41.1))
        bezier7Path.addLineToPoint(CGPointMake(61.72, 41.1))
        bezier7Path.addCurveToPoint(CGPointMake(61.49, 41.31), controlPoint1: CGPointMake(61.57, 41.1), controlPoint2: CGPointMake(61.49, 41.12))
        bezier7Path.addLineToPoint(CGPointMake(61.49, 50.24))
        bezier7Path.addCurveToPoint(CGPointMake(61.72, 50.45), controlPoint1: CGPointMake(61.49, 50.42), controlPoint2: CGPointMake(61.53, 50.45))
        bezier7Path.addLineToPoint(CGPointMake(62.42, 50.45))
        bezier7Path.addCurveToPoint(CGPointMake(62.67, 50.25), controlPoint1: CGPointMake(62.61, 50.45), controlPoint2: CGPointMake(62.67, 50.45))
        bezier7Path.closePath()
        bezier7Path.miterLimit = 4;
        
        color0.setFill()
        bezier7Path.fill()
        
        
        //// Group 7
        //// Bezier 8 Drawing
        var bezier8Path = UIBezierPath()
        bezier8Path.moveToPoint(CGPointMake(60.56, 48.6))
        bezier8Path.addCurveToPoint(CGPointMake(57.3, 45.24), controlPoint1: CGPointMake(60.56, 46.37), controlPoint2: CGPointMake(57.3, 46.72))
        bezier8Path.addCurveToPoint(CGPointMake(58.44, 44.22), controlPoint1: CGPointMake(57.3, 44.74), controlPoint2: CGPointMake(57.7, 44.22))
        bezier8Path.addCurveToPoint(CGPointMake(59.8, 44.73), controlPoint1: CGPointMake(59.21, 44.22), controlPoint2: CGPointMake(59.41, 44.73))
        bezier8Path.addCurveToPoint(CGPointMake(60.28, 44.26), controlPoint1: CGPointMake(60, 44.73), controlPoint2: CGPointMake(60.28, 44.61))
        bezier8Path.addCurveToPoint(CGPointMake(58.51, 43.47), controlPoint1: CGPointMake(60.28, 43.76), controlPoint2: CGPointMake(59.42, 43.47))
        bezier8Path.addCurveToPoint(CGPointMake(56.25, 45.35), controlPoint1: CGPointMake(57.3, 43.47), controlPoint2: CGPointMake(56.25, 44.12))
        bezier8Path.addCurveToPoint(CGPointMake(58.02, 47.39), controlPoint1: CGPointMake(56.25, 46.49), controlPoint2: CGPointMake(57.05, 46.98))
        bezier8Path.addCurveToPoint(CGPointMake(59.5, 48.73), controlPoint1: CGPointMake(58.79, 47.71), controlPoint2: CGPointMake(59.5, 48))
        bezier8Path.addCurveToPoint(CGPointMake(58.14, 49.9), controlPoint1: CGPointMake(59.5, 49.27), controlPoint2: CGPointMake(59.06, 49.9))
        bezier8Path.addCurveToPoint(CGPointMake(56.49, 49.21), controlPoint1: CGPointMake(57.21, 49.9), controlPoint2: CGPointMake(56.95, 49.21))
        bezier8Path.addCurveToPoint(CGPointMake(55.99, 49.64), controlPoint1: CGPointMake(56.27, 49.21), controlPoint2: CGPointMake(55.99, 49.3))
        bezier8Path.addCurveToPoint(CGPointMake(58.12, 50.65), controlPoint1: CGPointMake(55.99, 50.18), controlPoint2: CGPointMake(57.05, 50.65))
        bezier8Path.addCurveToPoint(CGPointMake(60.56, 48.6), controlPoint1: CGPointMake(59.32, 50.65), controlPoint2: CGPointMake(60.56, 50.01))
        bezier8Path.closePath()
        bezier8Path.miterLimit = 4;
        
        color0.setFill()
        bezier8Path.fill()
        
        
        
        
        //// Group 8
        //// Bezier 9 Drawing
        var bezier9Path = UIBezierPath()
        bezier9Path.moveToPoint(CGPointMake(6.33, 50.18))
        bezier9Path.addLineToPoint(CGPointMake(6.33, 45.61))
        bezier9Path.addCurveToPoint(CGPointMake(3.66, 43.43), controlPoint1: CGPointMake(6.33, 44.84), controlPoint2: CGPointMake(6.32, 43.43))
        bezier9Path.addCurveToPoint(CGPointMake(1.59, 43.75), controlPoint1: CGPointMake(2.65, 43.43), controlPoint2: CGPointMake(1.96, 43.63))
        bezier9Path.addCurveToPoint(CGPointMake(1, 44.29), controlPoint1: CGPointMake(1.15, 43.89), controlPoint2: CGPointMake(1, 44.07))
        bezier9Path.addLineToPoint(CGPointMake(1, 50.2))
        bezier9Path.addCurveToPoint(CGPointMake(1.25, 50.45), controlPoint1: CGPointMake(1, 50.42), controlPoint2: CGPointMake(1.06, 50.45))
        bezier9Path.addLineToPoint(CGPointMake(1.9, 50.45))
        bezier9Path.addCurveToPoint(CGPointMake(2.18, 50.18), controlPoint1: CGPointMake(2.08, 50.45), controlPoint2: CGPointMake(2.18, 50.42))
        bezier9Path.addLineToPoint(CGPointMake(2.18, 44.75))
        bezier9Path.addCurveToPoint(CGPointMake(3.61, 44.15), controlPoint1: CGPointMake(2.18, 44.45), controlPoint2: CGPointMake(2.68, 44.15))
        bezier9Path.addCurveToPoint(CGPointMake(5.16, 45.76), controlPoint1: CGPointMake(5.16, 44.15), controlPoint2: CGPointMake(5.16, 45.14))
        bezier9Path.addLineToPoint(CGPointMake(5.16, 50.18))
        bezier9Path.addCurveToPoint(CGPointMake(5.45, 50.45), controlPoint1: CGPointMake(5.16, 50.42), controlPoint2: CGPointMake(5.24, 50.45))
        bezier9Path.addLineToPoint(CGPointMake(6.18, 50.45))
        bezier9Path.addCurveToPoint(CGPointMake(6.33, 50.18), controlPoint1: CGPointMake(6.32, 50.42), controlPoint2: CGPointMake(6.33, 50.3))
        bezier9Path.closePath()
        bezier9Path.miterLimit = 4;
        
        color0.setFill()
        bezier9Path.fill()
        
        
        
        
        //// Bezier 10 Drawing
        var bezier10Path = UIBezierPath()
        bezier10Path.moveToPoint(CGPointMake(13.34, 47.05))
        bezier10Path.addCurveToPoint(CGPointMake(12.07, 43.92), controlPoint1: CGPointMake(13.34, 45.46), controlPoint2: CGPointMake(12.84, 44.44))
        bezier10Path.addCurveToPoint(CGPointMake(10.35, 43.43), controlPoint1: CGPointMake(11.59, 43.59), controlPoint2: CGPointMake(10.96, 43.43))
        bezier10Path.addCurveToPoint(CGPointMake(8.63, 43.92), controlPoint1: CGPointMake(9.74, 43.43), controlPoint2: CGPointMake(9.11, 43.59))
        bezier10Path.addCurveToPoint(CGPointMake(7.36, 47.05), controlPoint1: CGPointMake(7.86, 44.44), controlPoint2: CGPointMake(7.36, 45.46))
        bezier10Path.addCurveToPoint(CGPointMake(8.63, 50.16), controlPoint1: CGPointMake(7.36, 48.63), controlPoint2: CGPointMake(7.86, 49.64))
        bezier10Path.addCurveToPoint(CGPointMake(10.35, 50.65), controlPoint1: CGPointMake(9.11, 50.49), controlPoint2: CGPointMake(9.74, 50.65))
        bezier10Path.addCurveToPoint(CGPointMake(12.07, 50.16), controlPoint1: CGPointMake(10.96, 50.65), controlPoint2: CGPointMake(11.59, 50.49))
        bezier10Path.addCurveToPoint(CGPointMake(13.34, 47.05), controlPoint1: CGPointMake(12.84, 49.64), controlPoint2: CGPointMake(13.34, 48.63))
        bezier10Path.closePath()
        bezier10Path.moveToPoint(CGPointMake(12.13, 47.05))
        bezier10Path.addCurveToPoint(CGPointMake(11.5, 49.45), controlPoint1: CGPointMake(12.13, 48.29), controlPoint2: CGPointMake(11.87, 49.1))
        bezier10Path.addCurveToPoint(CGPointMake(10.35, 49.88), controlPoint1: CGPointMake(11.15, 49.79), controlPoint2: CGPointMake(10.82, 49.88))
        bezier10Path.addCurveToPoint(CGPointMake(9.2, 49.45), controlPoint1: CGPointMake(9.89, 49.88), controlPoint2: CGPointMake(9.56, 49.79))
        bezier10Path.addCurveToPoint(CGPointMake(8.58, 47.05), controlPoint1: CGPointMake(8.83, 49.1), controlPoint2: CGPointMake(8.58, 48.29))
        bezier10Path.addCurveToPoint(CGPointMake(9.2, 44.63), controlPoint1: CGPointMake(8.58, 45.78), controlPoint2: CGPointMake(8.83, 44.98))
        bezier10Path.addCurveToPoint(CGPointMake(10.35, 44.2), controlPoint1: CGPointMake(9.56, 44.29), controlPoint2: CGPointMake(9.89, 44.2))
        bezier10Path.addCurveToPoint(CGPointMake(11.5, 44.63), controlPoint1: CGPointMake(10.82, 44.2), controlPoint2: CGPointMake(11.15, 44.29))
        bezier10Path.addCurveToPoint(CGPointMake(12.13, 47.05), controlPoint1: CGPointMake(11.87, 44.98), controlPoint2: CGPointMake(12.13, 45.78))
        bezier10Path.closePath()
        bezier10Path.miterLimit = 4;
        
        color0.setFill()
        bezier10Path.fill()
        
        
        //// Bezier 11 Drawing
        var bezier11Path = UIBezierPath()
        bezier11Path.moveToPoint(CGPointMake(25.44, 47.05))
        bezier11Path.addCurveToPoint(CGPointMake(24.17, 43.92), controlPoint1: CGPointMake(25.44, 45.46), controlPoint2: CGPointMake(24.94, 44.44))
        bezier11Path.addCurveToPoint(CGPointMake(22.45, 43.43), controlPoint1: CGPointMake(23.69, 43.59), controlPoint2: CGPointMake(23.06, 43.43))
        bezier11Path.addCurveToPoint(CGPointMake(20.73, 43.92), controlPoint1: CGPointMake(21.84, 43.43), controlPoint2: CGPointMake(21.21, 43.59))
        bezier11Path.addCurveToPoint(CGPointMake(19.46, 47.05), controlPoint1: CGPointMake(19.96, 44.44), controlPoint2: CGPointMake(19.46, 45.46))
        bezier11Path.addCurveToPoint(CGPointMake(20.73, 50.16), controlPoint1: CGPointMake(19.46, 48.63), controlPoint2: CGPointMake(19.96, 49.64))
        bezier11Path.addCurveToPoint(CGPointMake(22.45, 50.65), controlPoint1: CGPointMake(21.21, 50.49), controlPoint2: CGPointMake(21.84, 50.65))
        bezier11Path.addCurveToPoint(CGPointMake(24.17, 50.16), controlPoint1: CGPointMake(23.06, 50.65), controlPoint2: CGPointMake(23.69, 50.49))
        bezier11Path.addCurveToPoint(CGPointMake(25.44, 47.05), controlPoint1: CGPointMake(24.94, 49.64), controlPoint2: CGPointMake(25.44, 48.63))
        bezier11Path.closePath()
        bezier11Path.moveToPoint(CGPointMake(24.23, 47.05))
        bezier11Path.addCurveToPoint(CGPointMake(23.6, 49.45), controlPoint1: CGPointMake(24.23, 48.29), controlPoint2: CGPointMake(23.98, 49.1))
        bezier11Path.addCurveToPoint(CGPointMake(22.45, 49.88), controlPoint1: CGPointMake(23.24, 49.79), controlPoint2: CGPointMake(22.92, 49.88))
        bezier11Path.addCurveToPoint(CGPointMake(21.3, 49.45), controlPoint1: CGPointMake(21.99, 49.88), controlPoint2: CGPointMake(21.66, 49.79))
        bezier11Path.addCurveToPoint(CGPointMake(20.68, 47.05), controlPoint1: CGPointMake(20.93, 49.1), controlPoint2: CGPointMake(20.68, 48.29))
        bezier11Path.addCurveToPoint(CGPointMake(21.3, 44.63), controlPoint1: CGPointMake(20.68, 45.78), controlPoint2: CGPointMake(20.93, 44.98))
        bezier11Path.addCurveToPoint(CGPointMake(22.45, 44.2), controlPoint1: CGPointMake(21.66, 44.29), controlPoint2: CGPointMake(21.99, 44.2))
        bezier11Path.addCurveToPoint(CGPointMake(23.6, 44.63), controlPoint1: CGPointMake(22.92, 44.2), controlPoint2: CGPointMake(23.24, 44.29))
        bezier11Path.addCurveToPoint(CGPointMake(24.23, 47.05), controlPoint1: CGPointMake(23.98, 44.98), controlPoint2: CGPointMake(24.23, 45.78))
        bezier11Path.closePath()
        bezier11Path.miterLimit = 4;
        
        color0.setFill()
        bezier11Path.fill()
        
        
        //// Group 9
        //// Bezier 12 Drawing
        var bezier12Path = UIBezierPath()
        bezier12Path.moveToPoint(CGPointMake(19.35, 43.72))
        bezier12Path.addCurveToPoint(CGPointMake(19.17, 43.59), controlPoint1: CGPointMake(19.35, 43.59), controlPoint2: CGPointMake(19.24, 43.59))
        bezier12Path.addLineToPoint(CGPointMake(18.51, 43.59))
        bezier12Path.addCurveToPoint(CGPointMake(18.35, 43.77), controlPoint1: CGPointMake(18.42, 43.6), controlPoint2: CGPointMake(18.39, 43.64))
        bezier12Path.addLineToPoint(CGPointMake(16.64, 48.82))
        bezier12Path.addLineToPoint(CGPointMake(14.84, 43.8))
        bezier12Path.addCurveToPoint(CGPointMake(14.55, 43.59), controlPoint1: CGPointMake(14.78, 43.62), controlPoint2: CGPointMake(14.75, 43.59))
        bezier12Path.addLineToPoint(CGPointMake(13.74, 43.59))
        bezier12Path.addCurveToPoint(CGPointMake(13.56, 43.75), controlPoint1: CGPointMake(13.69, 43.59), controlPoint2: CGPointMake(13.56, 43.59))
        bezier12Path.addCurveToPoint(CGPointMake(13.61, 43.93), controlPoint1: CGPointMake(13.56, 43.8), controlPoint2: CGPointMake(13.58, 43.87))
        bezier12Path.addLineToPoint(CGPointMake(16.01, 50.24))
        bezier12Path.addCurveToPoint(CGPointMake(16.21, 50.45), controlPoint1: CGPointMake(16.08, 50.4), controlPoint2: CGPointMake(16.1, 50.44))
        bezier12Path.addLineToPoint(CGPointMake(16.73, 50.45))
        bezier12Path.addCurveToPoint(CGPointMake(16.98, 50.25), controlPoint1: CGPointMake(16.88, 50.45), controlPoint2: CGPointMake(16.91, 50.44))
        bezier12Path.addLineToPoint(CGPointMake(19.29, 43.93))
        bezier12Path.addCurveToPoint(CGPointMake(19.35, 43.72), controlPoint1: CGPointMake(19.35, 43.77), controlPoint2: CGPointMake(19.35, 43.75))
        bezier12Path.closePath()
        bezier12Path.miterLimit = 4;
        
        color0.setFill()
        bezier12Path.fill()
        
        
        
        
        
        
        
        
        //// Group 10
        //// Group 11
        //// Bezier 13 Drawing
        var bezier13Path = UIBezierPath()
        bezier13Path.moveToPoint(CGPointMake(17.44, 6.36))
        bezier13Path.addCurveToPoint(CGPointMake(22.8, 1), controlPoint1: CGPointMake(17.44, 3.4), controlPoint2: CGPointMake(19.84, 1))
        bezier13Path.addCurveToPoint(CGPointMake(28.15, 6.36), controlPoint1: CGPointMake(25.76, 1), controlPoint2: CGPointMake(28.15, 3.4))
        bezier13Path.addCurveToPoint(CGPointMake(22.8, 11.72), controlPoint1: CGPointMake(28.15, 9.31), controlPoint2: CGPointMake(25.76, 11.72))
        bezier13Path.addCurveToPoint(CGPointMake(17.44, 6.36), controlPoint1: CGPointMake(19.84, 11.72), controlPoint2: CGPointMake(17.44, 9.31))
        bezier13Path.closePath()
        bezier13Path.miterLimit = 4;
        
        color0.setFill()
        bezier13Path.fill()
        
        
        
        
        
        
        //// Group 12
        //// Group 13
        //// Bezier 14 Drawing
        var bezier14Path = UIBezierPath()
        bezier14Path.moveToPoint(CGPointMake(67.7, 39.13))
        bezier14Path.addLineToPoint(CGPointMake(68.12, 39.13))
        bezier14Path.addCurveToPoint(CGPointMake(68.7, 39.47), controlPoint1: CGPointMake(68.34, 39.13), controlPoint2: CGPointMake(68.7, 39.13))
        bezier14Path.addCurveToPoint(CGPointMake(68.14, 39.81), controlPoint1: CGPointMake(68.7, 39.81), controlPoint2: CGPointMake(68.32, 39.81))
        bezier14Path.addLineToPoint(CGPointMake(67.7, 39.81))
        bezier14Path.addLineToPoint(CGPointMake(67.7, 39.13))
        bezier14Path.closePath()
        bezier14Path.moveToPoint(CGPointMake(67.33, 41.1))
        bezier14Path.addLineToPoint(CGPointMake(67.7, 41.1))
        bezier14Path.addLineToPoint(CGPointMake(67.7, 40.13))
        bezier14Path.addLineToPoint(CGPointMake(67.91, 40.13))
        bezier14Path.addCurveToPoint(CGPointMake(68.59, 40.74), controlPoint1: CGPointMake(68.21, 40.13), controlPoint2: CGPointMake(68.32, 40.24))
        bezier14Path.addLineToPoint(CGPointMake(68.8, 41.1))
        bezier14Path.addLineToPoint(CGPointMake(69.25, 41.1))
        bezier14Path.addLineToPoint(CGPointMake(68.97, 40.65))
        bezier14Path.addCurveToPoint(CGPointMake(68.44, 40.08), controlPoint1: CGPointMake(68.69, 40.2), controlPoint2: CGPointMake(68.57, 40.13))
        bezier14Path.addLineToPoint(CGPointMake(68.44, 40.07))
        bezier14Path.addCurveToPoint(CGPointMake(69.09, 39.43), controlPoint1: CGPointMake(68.92, 40.04), controlPoint2: CGPointMake(69.09, 39.69))
        bezier14Path.addCurveToPoint(CGPointMake(68.87, 38.98), controlPoint1: CGPointMake(69.09, 39.25), controlPoint2: CGPointMake(69, 39.08))
        bezier14Path.addCurveToPoint(CGPointMake(68.12, 38.81), controlPoint1: CGPointMake(68.68, 38.81), controlPoint2: CGPointMake(68.38, 38.81))
        bezier14Path.addLineToPoint(CGPointMake(67.33, 38.81))
        bezier14Path.addLineToPoint(CGPointMake(67.33, 41.1))
        bezier14Path.closePath()
        bezier14Path.moveToPoint(CGPointMake(68.26, 37.8))
        bezier14Path.addCurveToPoint(CGPointMake(66.13, 39.92), controlPoint1: CGPointMake(67.1, 37.8), controlPoint2: CGPointMake(66.13, 38.74))
        bezier14Path.addCurveToPoint(CGPointMake(68.26, 42.05), controlPoint1: CGPointMake(66.13, 41.1), controlPoint2: CGPointMake(67.08, 42.05))
        bezier14Path.addCurveToPoint(CGPointMake(70.38, 39.92), controlPoint1: CGPointMake(69.44, 42.05), controlPoint2: CGPointMake(70.38, 41.09))
        bezier14Path.addCurveToPoint(CGPointMake(68.26, 37.8), controlPoint1: CGPointMake(70.38, 38.75), controlPoint2: CGPointMake(69.42, 37.8))
        bezier14Path.closePath()
        bezier14Path.moveToPoint(CGPointMake(68.25, 38.15))
        bezier14Path.addCurveToPoint(CGPointMake(70.03, 39.92), controlPoint1: CGPointMake(69.24, 38.15), controlPoint2: CGPointMake(70.03, 38.94))
        bezier14Path.addCurveToPoint(CGPointMake(68.25, 41.7), controlPoint1: CGPointMake(70.03, 40.9), controlPoint2: CGPointMake(69.24, 41.7))
        bezier14Path.addCurveToPoint(CGPointMake(66.48, 39.92), controlPoint1: CGPointMake(67.28, 41.7), controlPoint2: CGPointMake(66.48, 40.9))
        bezier14Path.addCurveToPoint(CGPointMake(68.25, 38.15), controlPoint1: CGPointMake(66.48, 38.94), controlPoint2: CGPointMake(67.28, 38.15))
        bezier14Path.closePath()
        bezier14Path.miterLimit = 4;
        
        color0.setFill()
        bezier14Path.fill()
        
        
        
        
        
        
        
        
        //// Group 14
        //// Group 15
        //// Group 16
        //// Bezier 15 Drawing
        var bezier15Path = UIBezierPath()
        bezier15Path.moveToPoint(CGPointMake(19.4, 5.72))
        bezier15Path.addCurveToPoint(CGPointMake(23.01, 2.12), controlPoint1: CGPointMake(19.4, 3.73), controlPoint2: CGPointMake(21.02, 2.12))
        bezier15Path.addCurveToPoint(CGPointMake(26.62, 5.72), controlPoint1: CGPointMake(25, 2.12), controlPoint2: CGPointMake(26.62, 3.73))
        bezier15Path.addCurveToPoint(CGPointMake(23.01, 9.33), controlPoint1: CGPointMake(26.62, 7.72), controlPoint2: CGPointMake(25, 9.33))
        bezier15Path.addCurveToPoint(CGPointMake(19.4, 5.72), controlPoint1: CGPointMake(21.02, 9.33), controlPoint2: CGPointMake(19.4, 7.72))
        bezier15Path.closePath()
        bezier15Path.miterLimit = 4;
        
        color1.setFill()
        bezier15Path.fill()
        
        
        
        
        //// Bezier 16 Drawing
        var bezier16Path = UIBezierPath()
        bezier16Path.moveToPoint(CGPointMake(33.43, 19.48))
        bezier16Path.addCurveToPoint(CGPointMake(34.08, 18.68), controlPoint1: CGPointMake(33.37, 19), controlPoint2: CGPointMake(33.28, 18.64))
        bezier16Path.addCurveToPoint(CGPointMake(36.36, 18.78), controlPoint1: CGPointMake(35.16, 18.74), controlPoint2: CGPointMake(35.7, 18.8))
        bezier16Path.addCurveToPoint(CGPointMake(38.45, 18.72), controlPoint1: CGPointMake(37.17, 18.78), controlPoint2: CGPointMake(38.1, 18.75))
        bezier16Path.addCurveToPoint(CGPointMake(39.71, 19.36), controlPoint1: CGPointMake(39.09, 18.67), controlPoint2: CGPointMake(39.5, 18.86))
        bezier16Path.addCurveToPoint(CGPointMake(39.44, 22.41), controlPoint1: CGPointMake(39.92, 19.85), controlPoint2: CGPointMake(40.64, 21.85))
        bezier16Path.addCurveToPoint(CGPointMake(34.58, 22.9), controlPoint1: CGPointMake(37.91, 23.13), controlPoint2: CGPointMake(35.68, 23.23))
        bezier16Path.addCurveToPoint(CGPointMake(33.52, 21.8), controlPoint1: CGPointMake(34.17, 22.78), controlPoint2: CGPointMake(33.51, 22.62))
        bezier16Path.addCurveToPoint(CGPointMake(33.43, 19.48), controlPoint1: CGPointMake(33.53, 21.51), controlPoint2: CGPointMake(33.55, 20.45))
        bezier16Path.closePath()
        bezier16Path.miterLimit = 4;
        
        color1.setFill()
        bezier16Path.fill()
        
        
        //// Bezier 17 Drawing
        var bezier17Path = UIBezierPath()
        bezier17Path.moveToPoint(CGPointMake(42.78, 18.98))
        bezier17Path.addCurveToPoint(CGPointMake(43.84, 21.27), controlPoint1: CGPointMake(43.4, 19.66), controlPoint2: CGPointMake(43.76, 20.79))
        bezier17Path.addCurveToPoint(CGPointMake(44.65, 21.11), controlPoint1: CGPointMake(43.92, 21.75), controlPoint2: CGPointMake(44.57, 21.56))
        bezier17Path.addCurveToPoint(CGPointMake(44.07, 18.74), controlPoint1: CGPointMake(44.77, 20.44), controlPoint2: CGPointMake(44.56, 19.33))
        bezier17Path.addCurveToPoint(CGPointMake(43, 18.43), controlPoint1: CGPointMake(43.84, 18.46), controlPoint2: CGPointMake(43.45, 18.34))
        bezier17Path.addCurveToPoint(CGPointMake(42.78, 18.98), controlPoint1: CGPointMake(42.57, 18.51), controlPoint2: CGPointMake(42.45, 18.62))
        bezier17Path.closePath()
        bezier17Path.miterLimit = 4;
        
        color1.setFill()
        bezier17Path.fill()
        
        
        //// Bezier 18 Drawing
        var bezier18Path = UIBezierPath()
        bezier18Path.moveToPoint(CGPointMake(33.66, 26.12))
        bezier18Path.addCurveToPoint(CGPointMake(30.5, 29.88), controlPoint1: CGPointMake(33.33, 26.24), controlPoint2: CGPointMake(30.55, 27.02))
        bezier18Path.addCurveToPoint(CGPointMake(29.85, 30.34), controlPoint1: CGPointMake(30.48, 30.72), controlPoint2: CGPointMake(30.24, 30.64))
        bezier18Path.addCurveToPoint(CGPointMake(25.18, 27.18), controlPoint1: CGPointMake(28.48, 29.29), controlPoint2: CGPointMake(27.07, 28.3))
        bezier18Path.addCurveToPoint(CGPointMake(23.2, 25.38), controlPoint1: CGPointMake(24.27, 26.64), controlPoint2: CGPointMake(23.49, 25.89))
        bezier18Path.addCurveToPoint(CGPointMake(22.82, 21.43), controlPoint1: CGPointMake(22.74, 24.57), controlPoint2: CGPointMake(22.11, 23.34))
        bezier18Path.addCurveToPoint(CGPointMake(24.44, 18.2), controlPoint1: CGPointMake(23.17, 20.48), controlPoint2: CGPointMake(23.89, 19.01))
        bezier18Path.addCurveToPoint(CGPointMake(26.98, 17.41), controlPoint1: CGPointMake(25.34, 16.87), controlPoint2: CGPointMake(25.24, 16.86))
        bezier18Path.addCurveToPoint(CGPointMake(28.48, 18.87), controlPoint1: CGPointMake(28.53, 17.92), controlPoint2: CGPointMake(28.46, 18.11))
        bezier18Path.addCurveToPoint(CGPointMake(28.17, 21.7), controlPoint1: CGPointMake(28.5, 19.87), controlPoint2: CGPointMake(28.37, 20.78))
        bezier18Path.addCurveToPoint(CGPointMake(28.97, 22.75), controlPoint1: CGPointMake(28.06, 22.19), controlPoint2: CGPointMake(28.37, 22.73))
        bezier18Path.addCurveToPoint(CGPointMake(31.46, 19.42), controlPoint1: CGPointMake(31.41, 22.82), controlPoint2: CGPointMake(31.46, 19.43))
        bezier18Path.addCurveToPoint(CGPointMake(32, 18.54), controlPoint1: CGPointMake(31.52, 18.63), controlPoint2: CGPointMake(31.22, 18.47))
        bezier18Path.addCurveToPoint(CGPointMake(32.78, 19.99), controlPoint1: CGPointMake(32.58, 18.61), controlPoint2: CGPointMake(32.69, 19.1))
        bezier18Path.addCurveToPoint(CGPointMake(32.78, 21.95), controlPoint1: CGPointMake(32.81, 20.33), controlPoint2: CGPointMake(32.78, 21.6))
        bezier18Path.addCurveToPoint(CGPointMake(34.02, 23.54), controlPoint1: CGPointMake(32.78, 22.3), controlPoint2: CGPointMake(32.82, 23.2))
        bezier18Path.addCurveToPoint(CGPointMake(39.89, 22.97), controlPoint1: CGPointMake(36, 24.07), controlPoint2: CGPointMake(38.76, 23.64))
        bezier18Path.addCurveToPoint(CGPointMake(40.9, 21.18), controlPoint1: CGPointMake(40.56, 22.58), controlPoint2: CGPointMake(40.98, 22.13))
        bezier18Path.addCurveToPoint(CGPointMake(40.5, 19.25), controlPoint1: CGPointMake(40.84, 20.47), controlPoint2: CGPointMake(40.64, 19.58))
        bezier18Path.addCurveToPoint(CGPointMake(40.69, 18.58), controlPoint1: CGPointMake(40.35, 18.88), controlPoint2: CGPointMake(40.38, 18.62))
        bezier18Path.addCurveToPoint(CGPointMake(43.36, 21.82), controlPoint1: CGPointMake(42.19, 18.38), controlPoint2: CGPointMake(42.85, 19.93))
        bezier18Path.addCurveToPoint(CGPointMake(44.81, 21.98), controlPoint1: CGPointMake(43.53, 22.44), controlPoint2: CGPointMake(44.38, 22.4))
        bezier18Path.addCurveToPoint(CGPointMake(45.17, 19.7), controlPoint1: CGPointMake(45.23, 21.57), controlPoint2: CGPointMake(45.47, 20.92))
        bezier18Path.addCurveToPoint(CGPointMake(44.82, 18.8), controlPoint1: CGPointMake(45.07, 19.31), controlPoint2: CGPointMake(44.93, 19))
        bezier18Path.addCurveToPoint(CGPointMake(45.09, 18.45), controlPoint1: CGPointMake(44.71, 18.62), controlPoint2: CGPointMake(44.68, 18.46))
        bezier18Path.addCurveToPoint(CGPointMake(47.09, 23.91), controlPoint1: CGPointMake(47.81, 18.44), controlPoint2: CGPointMake(47.12, 23.48))
        bezier18Path.addCurveToPoint(CGPointMake(46.71, 26.14), controlPoint1: CGPointMake(47.05, 24.45), controlPoint2: CGPointMake(46.83, 25.61))
        bezier18Path.addCurveToPoint(CGPointMake(44.71, 27.24), controlPoint1: CGPointMake(46.22, 28.36), controlPoint2: CGPointMake(45.08, 27.47))
        bezier18Path.addCurveToPoint(CGPointMake(40.55, 25.83), controlPoint1: CGPointMake(43.58, 26.53), controlPoint2: CGPointMake(42.29, 25.99))
        bezier18Path.addCurveToPoint(CGPointMake(33.66, 26.12), controlPoint1: CGPointMake(36.85, 25.5), controlPoint2: CGPointMake(34.76, 25.75))
        bezier18Path.closePath()
        bezier18Path.miterLimit = 4;
        
        color1.setFill()
        bezier18Path.fill()
        
        
        //// Bezier 19 Drawing
        var bezier19Path = UIBezierPath()
        bezier19Path.moveToPoint(CGPointMake(24.1, 16.31))
        bezier19Path.addCurveToPoint(CGPointMake(21.73, 14.99), controlPoint1: CGPointMake(23.64, 16.03), controlPoint2: CGPointMake(22.68, 15.54))
        bezier19Path.addCurveToPoint(CGPointMake(18.49, 13.97), controlPoint1: CGPointMake(20.01, 13.98), controlPoint2: CGPointMake(19.14, 13.45))
        bezier19Path.addCurveToPoint(CGPointMake(17.21, 15.52), controlPoint1: CGPointMake(17.81, 14.52), controlPoint2: CGPointMake(17.3, 15.26))
        bezier19Path.addCurveToPoint(CGPointMake(16.93, 16.7), controlPoint1: CGPointMake(17.11, 15.78), controlPoint2: CGPointMake(17.16, 16.41))
        bezier19Path.addCurveToPoint(CGPointMake(16.15, 17.75), controlPoint1: CGPointMake(16.76, 16.91), controlPoint2: CGPointMake(16.5, 17.31))
        bezier19Path.addCurveToPoint(CGPointMake(16.54, 19.17), controlPoint1: CGPointMake(15.65, 18.35), controlPoint2: CGPointMake(16.01, 18.54))
        bezier19Path.addCurveToPoint(CGPointMake(19.41, 20.14), controlPoint1: CGPointMake(17.03, 19.76), controlPoint2: CGPointMake(18.15, 19.15))
        bezier19Path.addCurveToPoint(CGPointMake(21.09, 22.32), controlPoint1: CGPointMake(20.04, 20.64), controlPoint2: CGPointMake(20.27, 21.03))
        bezier19Path.addCurveToPoint(CGPointMake(21.76, 21.91), controlPoint1: CGPointMake(21.37, 22.75), controlPoint2: CGPointMake(21.53, 22.5))
        bezier19Path.addCurveToPoint(CGPointMake(23.97, 17.55), controlPoint1: CGPointMake(22.07, 21.09), controlPoint2: CGPointMake(23.15, 18.8))
        bezier19Path.addCurveToPoint(CGPointMake(24.1, 16.31), controlPoint1: CGPointMake(24.24, 17.13), controlPoint2: CGPointMake(24.62, 16.63))
        bezier19Path.closePath()
        bezier19Path.moveToPoint(CGPointMake(18.21, 16.07))
        bezier19Path.addCurveToPoint(CGPointMake(19.66, 15.22), controlPoint1: CGPointMake(17.69, 15.2), controlPoint2: CGPointMake(19.57, 14.95))
        bezier19Path.addCurveToPoint(CGPointMake(18.21, 16.07), controlPoint1: CGPointMake(19.75, 15.49), controlPoint2: CGPointMake(18.72, 16.95))
        bezier19Path.closePath()
        bezier19Path.miterLimit = 4;
        
        color1.setFill()
        bezier19Path.fill()
        
        
        //// Bezier 20 Drawing
        var bezier20Path = UIBezierPath()
        bezier20Path.moveToPoint(CGPointMake(29.25, 18.57))
        bezier20Path.addCurveToPoint(CGPointMake(28.96, 21.61), controlPoint1: CGPointMake(29.38, 20.13), controlPoint2: CGPointMake(28.96, 21.36))
        bezier20Path.addCurveToPoint(CGPointMake(29.67, 21.84), controlPoint1: CGPointMake(28.97, 21.93), controlPoint2: CGPointMake(29.36, 22.01))
        bezier20Path.addCurveToPoint(CGPointMake(30.63, 18.82), controlPoint1: CGPointMake(30.24, 21.53), controlPoint2: CGPointMake(30.66, 20.46))
        bezier20Path.addCurveToPoint(CGPointMake(29.96, 18.13), controlPoint1: CGPointMake(30.62, 18.42), controlPoint2: CGPointMake(30.64, 18.24))
        bezier20Path.addCurveToPoint(CGPointMake(29.25, 18.57), controlPoint1: CGPointMake(29.31, 18.03), controlPoint2: CGPointMake(29.21, 18.05))
        bezier20Path.closePath()
        bezier20Path.miterLimit = 4;
        
        color1.setFill()
        bezier20Path.fill()

    }
    

}
