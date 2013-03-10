//
//  UIImage+Transform.m
//  SFUIImageCategories
//
//  Created by Simon Fortelny on 3/9/13.
//  Copyright (c) 2013 Simon Fortelny. All rights reserved.
//

#import "UIImage+Transform.h"

@implementation UIImage (Transform)

+ (UIImage *)image:(UIImage *)image scaledToSize:(CGSize)newSize {
  UIGraphicsBeginImageContext(newSize);
  [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
  UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return newImage;
}

- (UIImage *)flipVertical;{
  return [UIImage imageWithCGImage:self.CGImage
                             scale:1.0 orientation: UIImageOrientationDownMirrored];
}

- (UIImage *)flipHorizontal{
  return [UIImage imageWithCGImage:self.CGImage
                             scale:1.0 orientation: UIImageOrientationUpMirrored];
}

@end
