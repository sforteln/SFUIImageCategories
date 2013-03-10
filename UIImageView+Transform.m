//
//  UIImageView+Transform.m
//  SFUIImageCategories
//
//  Created by Simon Fortelny on 3/10/13.
//  Copyright (c) 2013 Simon Fortelny. All rights reserved.
//

#import "UIImageView+Transform.h"

@implementation UIImageView (Transform)

-(void)applyMask:(UIImage *)maskImage {
  CALayer *mask = [CALayer layer];
  mask.contents = (id)[maskImage CGImage];
  mask.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
  self.layer.mask = mask;
  self.layer.masksToBounds = YES;
}

@end
