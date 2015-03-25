//
//  InfoButton.m
//  NovoMixPasseport
//
//  Created by Fethi El Hassasna on 2/24/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

#import "InfoButton.h"
#import <QuartzCore/QuartzCore.h>
#import "Chameleon.h"

@implementation InfoButton

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self addObserver:self forKeyPath:@"highlighted" options:NSKeyValueObservingOptionNew context:NULL];
    }
    
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //// Color Declarations
    UIColor* lightBlue = [UIColor flatSkyBlueColor];
    
    if (self.highlighted == YES)
    {
        lightBlue = [UIColor flatSkyBlueColorDark];
    }
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(1, 1, 50, 50)];
    [lightBlue setFill];
    [ovalPath fill];
    
    
    //// Group
    {
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(23.39, 18.2)];
        [bezierPath addLineToPoint: CGPointMake(28.65, 18.2)];
        [bezierPath addCurveToPoint: CGPointMake(29.57, 17.79) controlPoint1: CGPointMake(29, 18.2) controlPoint2: CGPointMake(29.31, 18.06)];
        [bezierPath addCurveToPoint: CGPointMake(29.96, 16.85) controlPoint1: CGPointMake(29.83, 17.53) controlPoint2: CGPointMake(29.96, 17.21)];
        [bezierPath addLineToPoint: CGPointMake(29.96, 12.79)];
        [bezierPath addCurveToPoint: CGPointMake(29.57, 11.84) controlPoint1: CGPointMake(29.96, 12.43) controlPoint2: CGPointMake(29.83, 12.11)];
        [bezierPath addCurveToPoint: CGPointMake(28.65, 11.44) controlPoint1: CGPointMake(29.31, 11.58) controlPoint2: CGPointMake(29, 11.44)];
        [bezierPath addLineToPoint: CGPointMake(23.39, 11.44)];
        [bezierPath addCurveToPoint: CGPointMake(22.46, 11.84) controlPoint1: CGPointMake(23.03, 11.44) controlPoint2: CGPointMake(22.72, 11.58)];
        [bezierPath addCurveToPoint: CGPointMake(22.07, 12.79) controlPoint1: CGPointMake(22.2, 12.11) controlPoint2: CGPointMake(22.07, 12.43)];
        [bezierPath addLineToPoint: CGPointMake(22.07, 16.85)];
        [bezierPath addCurveToPoint: CGPointMake(22.46, 17.79) controlPoint1: CGPointMake(22.07, 17.21) controlPoint2: CGPointMake(22.2, 17.53)];
        [bezierPath addCurveToPoint: CGPointMake(23.39, 18.2) controlPoint1: CGPointMake(22.72, 18.06) controlPoint2: CGPointMake(23.03, 18.2)];
        [bezierPath closePath];
        bezierPath.miterLimit = 4;
        
        [UIColor.whiteColor setFill];
        [bezierPath fill];
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(32.2, 36.16)];
        [bezier2Path addCurveToPoint: CGPointMake(31.27, 35.76) controlPoint1: CGPointMake(31.94, 35.89) controlPoint2: CGPointMake(31.63, 35.76)];
        [bezier2Path addLineToPoint: CGPointMake(29.96, 35.76)];
        [bezier2Path addLineToPoint: CGPointMake(29.96, 23.6)];
        [bezier2Path addCurveToPoint: CGPointMake(29.57, 22.65) controlPoint1: CGPointMake(29.96, 23.23) controlPoint2: CGPointMake(29.83, 22.92)];
        [bezier2Path addCurveToPoint: CGPointMake(28.65, 22.25) controlPoint1: CGPointMake(29.31, 22.38) controlPoint2: CGPointMake(29, 22.25)];
        [bezier2Path addLineToPoint: CGPointMake(20.76, 22.25)];
        [bezier2Path addCurveToPoint: CGPointMake(19.84, 22.65) controlPoint1: CGPointMake(20.4, 22.25) controlPoint2: CGPointMake(20.1, 22.38)];
        [bezier2Path addCurveToPoint: CGPointMake(19.45, 23.6) controlPoint1: CGPointMake(19.58, 22.92) controlPoint2: CGPointMake(19.45, 23.23)];
        [bezier2Path addLineToPoint: CGPointMake(19.45, 26.3)];
        [bezier2Path addCurveToPoint: CGPointMake(19.84, 27.25) controlPoint1: CGPointMake(19.45, 26.67) controlPoint2: CGPointMake(19.58, 26.98)];
        [bezier2Path addCurveToPoint: CGPointMake(20.76, 27.65) controlPoint1: CGPointMake(20.1, 27.52) controlPoint2: CGPointMake(20.4, 27.65)];
        [bezier2Path addLineToPoint: CGPointMake(22.07, 27.65)];
        [bezier2Path addLineToPoint: CGPointMake(22.07, 35.76)];
        [bezier2Path addLineToPoint: CGPointMake(20.76, 35.76)];
        [bezier2Path addCurveToPoint: CGPointMake(19.84, 36.16) controlPoint1: CGPointMake(20.4, 35.76) controlPoint2: CGPointMake(20.1, 35.89)];
        [bezier2Path addCurveToPoint: CGPointMake(19.45, 37.11) controlPoint1: CGPointMake(19.58, 36.42) controlPoint2: CGPointMake(19.45, 36.74)];
        [bezier2Path addLineToPoint: CGPointMake(19.45, 39.81)];
        [bezier2Path addCurveToPoint: CGPointMake(19.84, 40.76) controlPoint1: CGPointMake(19.45, 40.17) controlPoint2: CGPointMake(19.58, 40.49)];
        [bezier2Path addCurveToPoint: CGPointMake(20.76, 41.16) controlPoint1: CGPointMake(20.1, 41.02) controlPoint2: CGPointMake(20.4, 41.16)];
        [bezier2Path addLineToPoint: CGPointMake(31.27, 41.16)];
        [bezier2Path addCurveToPoint: CGPointMake(32.2, 40.76) controlPoint1: CGPointMake(31.63, 41.16) controlPoint2: CGPointMake(31.94, 41.02)];
        [bezier2Path addCurveToPoint: CGPointMake(32.59, 39.81) controlPoint1: CGPointMake(32.46, 40.49) controlPoint2: CGPointMake(32.59, 40.17)];
        [bezier2Path addLineToPoint: CGPointMake(32.59, 37.11)];
        [bezier2Path addCurveToPoint: CGPointMake(32.2, 36.16) controlPoint1: CGPointMake(32.59, 36.74) controlPoint2: CGPointMake(32.46, 36.42)];
        [bezier2Path closePath];
        bezier2Path.miterLimit = 4;
        
        [UIColor.whiteColor setFill];
        [bezier2Path fill];
    }
    
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"highlighted"];
}

@end
