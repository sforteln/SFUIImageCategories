//
//  ViewController.m
//  SFUIImageCategories
//
//  Created by Simon Fortelny on 3/9/13.
//  Copyright (c) 2013 Simon Fortelny. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Filter.h"
#import "UIImage+Transform.h"
#import "UIImageView+Transform.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)viewDidAppear:(BOOL)animated{
  [super viewDidAppear:animated];
  UIImage *originalImage = [UIImage imageNamed:@"example.jpg"];
  self.grayscale.image = [originalImage grayScale];
  self.flippedHoriz.image = [originalImage flipHorizontal];
  self.flippedVert.image = [originalImage flipVertical];
  

  self.masked.image = originalImage;
  UIImage *mask = [UIImage imageNamed:@"exampleMask.png"];
  [self.masked applyMask:mask];
}

@end
