//
//  RButton.h
//  NovoMixPasseport
//
//  Created by Fethi El Hassasna on 2/22/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

#import <UIKit/UIKit.h>

//IB_DESIGNABLE

@interface RButton : UIButton

@property (nonatomic) UIColor *darkColor;
@property (nonatomic) UIColor *lightColor;

@property (assign,nonatomic) IBInspectable NSInteger cornerRadius;

@end
