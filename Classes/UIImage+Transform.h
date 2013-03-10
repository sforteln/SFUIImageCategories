//
//  UIImage+Transform.h
//  SFUIImageCategories
//
//  Created by Simon Fortelny on 3/9/13.
//  Copyright (c) 2013 Simon Fortelny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Transform)

/*
 *  Returns a new image that is the original scaled to the newSize
 */
+ (UIImage *)image:(UIImage *)image scaledToSize:(CGSize)newSize;

/*
 *  Returns a new UIImage that is a vertically flipped version of the original
 */
- (UIImage *)flipVertical;


/*
 *  Returns a new UIImage that is a horizontally flipped version of the original
 */
- (UIImage *)flipHorizontal;

@end
