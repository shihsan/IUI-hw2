//
//  ScrollViewController.m
//  bobo
//
//  Created by Amy on 2014/3/8.
//  Copyright (c) 2014年 施亦宣. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController
@synthesize MyScrollView;
@synthesize Scroll_Image;
@synthesize NavBar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.NavBar setFrame:CGRectMake(0, 0, 320.0, 55.0)];
    
    
    MyScrollView.delegate = self;
    //Scroll_Image.image = [UIImage imageNamed:@"taiwan.png"];
    
    
    //MyScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    self.MyScrollView.contentSize = self.Scroll_Image.image.size;
    self.Scroll_Image.frame = CGRectMake(0, 0, self.Scroll_Image.image.size.width, self.Scroll_Image.image.size.height);
    
    //[MyScrollView setContentSize:CGSizeMake(640, 800)];
    [MyScrollView setScrollEnabled:YES];
    [MyScrollView setShowsHorizontalScrollIndicator:YES];
    [MyScrollView setShowsVerticalScrollIndicator:YES];
    }



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
