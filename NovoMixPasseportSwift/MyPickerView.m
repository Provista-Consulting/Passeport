//
//  MyPickerView.m
//  NovoMixPasseport
//
//  Created by Fethi El Hassasna on 2/23/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

#import "MyPickerView.h"
#import <QuartzCore/QuartzCore.h>
#import "Chameleon.h"

@implementation MyPickerView 

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
    
    self.layer.cornerRadius = 10.0f;
    self.layer.borderColor = [[UIColor flatSkyBlueColor]CGColor];
    self.layer.borderWidth = 2.0f;
    self.cornerRadius = 10;
    
    
    
}

- (void)setBorderWidth:(NSInteger)borderWidth {
    self.layer.borderWidth = borderWidth;
    self.clipsToBounds = YES;
}

- (void)setCornerRadius:(NSInteger)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.clipsToBounds = YES;
}

@end
