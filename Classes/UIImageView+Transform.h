//
//  UIImageView+Transform.h
//  SFUIImageCategories
//
//  Created by Simon Fortelny on 3/10/13.
//  Copyright (c) 2013 Simon Fortelny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


@interface UIImageView (Transform)

-(void)applyMask:(UIImage *)maskImage;

@end
