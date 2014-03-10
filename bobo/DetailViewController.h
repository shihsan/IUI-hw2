//
//  DetailViewController.h
//  hw1
//
//  Created by 彭新雅 on 2/27/14.
//  Copyright (c) 2014 施亦宣. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController



@property (strong, nonatomic) IBOutlet UILabel *lable;
@property (nonatomic, strong) NSString *labletitle;
@property (strong, nonatomic) IBOutlet UITextView *textview;
@property (strong, nonatomic) IBOutlet UIImageView *photo;
@property (strong, nonatomic) IBOutlet UIImageView *line;
@property (strong, nonatomic) IBOutlet UIImageView *photo2;


@end
