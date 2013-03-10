//
//  ViewController.h
//  SFUIImageCategories
//
//  Created by Simon Fortelny on 3/9/13.
//  Copyright (c) 2013 Simon Fortelny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,strong) IBOutlet UIImageView *grayscale;
@property (nonatomic,strong) IBOutlet UIImageView *flippedHoriz;
@property (nonatomic,strong) IBOutlet UIImageView *flippedVert;
@property (nonatomic,strong) IBOutlet UIImageView *masked;


@end
