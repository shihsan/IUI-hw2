//
//  ScrollViewController.h
//  bobo
//
//  Created by Amy on 2014/3/8.
//  Copyright (c) 2014年 施亦宣. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewController : UIViewController <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *MyScrollView;
@property (strong, nonatomic) IBOutlet UIImageView *Scroll_Image;
@property (strong, nonatomic) IBOutlet UINavigationBar *NavBar;


@end
