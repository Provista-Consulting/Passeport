//
//  ShowHideButton.m
//  NovoMixPasseport
//
//  Created by Fethi El Hassasna on 2/19/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

#import "ShowHideButton.h"
#import <QuartzCore/QuartzCore.h>
#import "Chameleon.h"

@implementation ShowHideButton

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
    UIColor* white = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
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
        [bezierPath moveToPoint: CGPointMake(24.14, 25.75)];
        [bezierPath addLineToPoint: CGPointMake(30.26, 18.72)];
        [bezierPath addCurveToPoint: CGPointMake(30.72, 17.41) controlPoint1: CGPointMake(30.57, 18.36) controlPoint2: CGPointMake(30.72, 17.92)];
        [bezierPath addCurveToPoint: CGPointMake(30.26, 16.1) controlPoint1: CGPointMake(30.72, 16.89) controlPoint2: CGPointMake(30.57, 16.45)];
        [bezierPath addLineToPoint: CGPointMake(29.31, 15.01)];
        [bezierPath addCurveToPoint: CGPointMake(28.18, 14.48) controlPoint1: CGPointMake(29, 14.66) controlPoint2: CGPointMake(28.62, 14.48)];
        [bezierPath addCurveToPoint: CGPointMake(27.04, 15.01) controlPoint1: CGPointMake(27.73, 14.48) controlPoint2: CGPointMake(27.35, 14.66)];
        [bezierPath addLineToPoint: CGPointMake(18.83, 24.43)];
        [bezierPath addCurveToPoint: CGPointMake(18.36, 25.74) controlPoint1: CGPointMake(18.52, 24.79) controlPoint2: CGPointMake(18.36, 25.23)];
        [bezierPath addCurveToPoint: CGPointMake(18.83, 27.05) controlPoint1: CGPointMake(18.36, 26.26) controlPoint2: CGPointMake(18.52, 26.69)];
        [bezierPath addLineToPoint: CGPointMake(27.04, 36.47)];
        [bezierPath addCurveToPoint: CGPointMake(28.18, 37.01) controlPoint1: CGPointMake(27.35, 36.83) controlPoint2: CGPointMake(27.73, 37.01)];
        [bezierPath addCurveToPoint: CGPointMake(29.31, 36.47) controlPoint1: CGPointMake(28.62, 37.01) controlPoint2: CGPointMake(29, 36.83)];
        [bezierPath addLineToPoint: CGPointMake(30.26, 35.39)];
        [bezierPath addCurveToPoint: CGPointMake(30.72, 34.08) controlPoint1: CGPointMake(30.57, 35.03) controlPoint2: CGPointMake(30.72, 34.6)];
        [bezierPath addCurveToPoint: CGPointMake(30.26, 32.77) controlPoint1: CGPointMake(30.72, 33.57) controlPoint2: CGPointMake(30.57, 33.13)];
        [bezierPath addLineToPoint: CGPointMake(24.14, 25.75)];
        [bezierPath closePath];
        bezierPath.miterLimit = 4;
        
        [white setFill];
        [bezierPath fill];
    }

}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"highlighted"];
}


@end
