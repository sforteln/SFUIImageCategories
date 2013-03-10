UIImageCategories
=================

UIImage and UIImageView Categories

Some convenience categories for common tasks when dealing with images and image views.

Installing
==================

To use the class you can just drag them into your project.

If you include the UIImageView+Transform class you will need to add the QuartzCore framework to your project.

Usage
====================
See the  ViewController in the project for useage examples but hopefully everything is pretty obvious.

Here's a quick example
```Objective-c
UIImage *originalImage = [UIImage imageNamed:@"example.jpg"];
UIImage *mask = [UIImage imageNamed:@"exampleMask.png"];
UIImageView *imageView = [[UIImageView alloc] initWithImage:originalImage];
[imageView applyMask:mask];
```
