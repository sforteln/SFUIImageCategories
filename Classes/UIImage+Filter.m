//
//  UIImage+Filter.m
//  SFUIImageCategories
//
//  Created by Simon Fortelny on 3/9/13.
//  Copyright (c) 2013 Simon Fortelny. All rights reserved.
//

#import "UIImage+Filter.h"
#import <QuartzCore/QuartzCore.h>


@implementation UIImage (Filter)

- (UIImage *)grayScale
{
  CGRect imageRect = CGRectMake(0, 0, self.size.width, self.size.height);
  
  // Grayscale color space
  CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
  
  // Create bitmap content with current image size and grayscale colorspace
  CGContextRef context = CGBitmapContextCreate(nil, self.size.width, self.size.height, 8, 0, colorSpace, kCGImageAlphaNone);
  
  // Draw image into current context, with specified rectangle
  // using previously defined context (with grayscale colorspace)
  CGContextDrawImage(context, imageRect, [self CGImage]);

  CGImageRef imageRef = CGBitmapContextCreateImage(context);
  UIImage *grayscaleImage = [UIImage imageWithCGImage:imageRef];

  CGColorSpaceRelease(colorSpace);
  CGContextRelease(context);
  CFRelease(imageRef);
  
  return grayscaleImage;
}





@end
