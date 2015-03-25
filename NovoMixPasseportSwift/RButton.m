//
//  RButton.m
//  NovoMixPasseport
//
//  Created by Fethi El Hassasna on 2/22/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

#import "RButton.h"
#import <QuartzCore/QuartzCore.h>
#import "Chameleon.h"

@implementation RButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self load];
    }
    
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        [self load];
    }
    
    return self;
}

-(void)load {
    
    _lightColor = [UIColor flatSkyBlueColor];
    _darkColor = [UIColor flatSkyBlueColorDark];
    
    //self.layer.cornerRadius = 10.0f;
    self.layer.masksToBounds = YES;
    //self.layer.borderColor = [[UIColor redColor]CGColor];
    self.backgroundColor = _lightColor;
    //self.layer.borderWidth = 1.0f;
    
}

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    
    if (highlighted) {
        self.backgroundColor = self.darkColor;
    } else {
        
        self.backgroundColor = self.lightColor;
    }
}

- (void)setCornerRadius:(NSInteger)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.clipsToBounds = YES;
}

@end
