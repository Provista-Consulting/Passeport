//
//  HomeButton.m
//  NovoMixPasseport
//
//  Created by Fethi El Hassasna on 2/22/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

#import "HomeButton.h"

@implementation HomeButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //// Color Declarations
    UIColor* color = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    
    //// Group
    {
        //// Group 2
        {
            //// Group 3
            {
                //// Bezier Drawing
                UIBezierPath* bezierPath = UIBezierPath.bezierPath;
                [bezierPath moveToPoint: CGPointMake(46.94, 24.34)];
                [bezierPath addLineToPoint: CGPointMake(42.79, 19.9)];
                [bezierPath addLineToPoint: CGPointMake(42.79, 14.76)];
                [bezierPath addCurveToPoint: CGPointMake(41.21, 13.08) controlPoint1: CGPointMake(42.79, 13.83) controlPoint2: CGPointMake(42.08, 13.08)];
                [bezierPath addCurveToPoint: CGPointMake(39.64, 14.76) controlPoint1: CGPointMake(40.35, 13.08) controlPoint2: CGPointMake(39.64, 13.83)];
                [bezierPath addLineToPoint: CGPointMake(39.64, 16.53)];
                [bezierPath addLineToPoint: CGPointMake(36.55, 13.22)];
                [bezierPath addCurveToPoint: CGPointMake(30.84, 13.23) controlPoint1: CGPointMake(35.02, 11.59) controlPoint2: CGPointMake(32.37, 11.59)];
                [bezierPath addLineToPoint: CGPointMake(20.46, 24.34)];
                [bezierPath addCurveToPoint: CGPointMake(20.46, 26.72) controlPoint1: CGPointMake(19.85, 25) controlPoint2: CGPointMake(19.85, 26.06)];
                [bezierPath addCurveToPoint: CGPointMake(22.68, 26.72) controlPoint1: CGPointMake(21.07, 27.37) controlPoint2: CGPointMake(22.07, 27.37)];
                [bezierPath addLineToPoint: CGPointMake(33.06, 15.6)];
                [bezierPath addCurveToPoint: CGPointMake(34.33, 15.6) controlPoint1: CGPointMake(33.4, 15.24) controlPoint2: CGPointMake(34, 15.24)];
                [bezierPath addLineToPoint: CGPointMake(44.72, 26.72)];
                [bezierPath addCurveToPoint: CGPointMake(45.83, 27.21) controlPoint1: CGPointMake(45.02, 27.04) controlPoint2: CGPointMake(45.43, 27.21)];
                [bezierPath addCurveToPoint: CGPointMake(46.94, 26.72) controlPoint1: CGPointMake(46.23, 27.21) controlPoint2: CGPointMake(46.63, 27.04)];
                [bezierPath addCurveToPoint: CGPointMake(46.94, 24.34) controlPoint1: CGPointMake(47.55, 26.06) controlPoint2: CGPointMake(47.55, 25)];
                [bezierPath closePath];
                bezierPath.miterLimit = 4;
                
                [color setFill];
                [bezierPath fill];
                
                
                //// Bezier 2 Drawing
                UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
                [bezier2Path moveToPoint: CGPointMake(34.24, 18.79)];
                [bezier2Path addCurveToPoint: CGPointMake(33.15, 18.79) controlPoint1: CGPointMake(33.94, 18.47) controlPoint2: CGPointMake(33.45, 18.47)];
                [bezier2Path addLineToPoint: CGPointMake(24.02, 28.57)];
                [bezier2Path addCurveToPoint: CGPointMake(23.8, 29.15) controlPoint1: CGPointMake(23.88, 28.72) controlPoint2: CGPointMake(23.8, 28.93)];
                [bezier2Path addLineToPoint: CGPointMake(23.8, 36.28)];
                [bezier2Path addCurveToPoint: CGPointMake(26.62, 39.3) controlPoint1: CGPointMake(23.8, 37.95) controlPoint2: CGPointMake(25.06, 39.3)];
                [bezier2Path addLineToPoint: CGPointMake(31.15, 39.3)];
                [bezier2Path addLineToPoint: CGPointMake(31.15, 31.81)];
                [bezier2Path addLineToPoint: CGPointMake(36.25, 31.81)];
                [bezier2Path addLineToPoint: CGPointMake(36.25, 39.3)];
                [bezier2Path addLineToPoint: CGPointMake(40.77, 39.3)];
                [bezier2Path addCurveToPoint: CGPointMake(43.6, 36.28) controlPoint1: CGPointMake(42.33, 39.3) controlPoint2: CGPointMake(43.6, 37.95)];
                [bezier2Path addLineToPoint: CGPointMake(43.6, 29.15)];
                [bezier2Path addCurveToPoint: CGPointMake(43.38, 28.57) controlPoint1: CGPointMake(43.6, 28.93) controlPoint2: CGPointMake(43.52, 28.72)];
                [bezier2Path addLineToPoint: CGPointMake(34.24, 18.79)];
                [bezier2Path closePath];
                bezier2Path.miterLimit = 4;
                
                [color2 setFill];
                [bezier2Path fill];
            }
        }
    }

}


@end
