//
//  MultilineLabel.m
//  NovoMixPasseport
//
//  Created by Fethi El Hassasna on 2/23/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

#import "MultilineLabel.h"

@implementation MultilineLabel

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
    self.lineBreakMode = NSLineBreakByWordWrapping;
    self.numberOfLines = 0;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
