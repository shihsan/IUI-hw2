//
//  TableViewController.h
//  hw1
//
//  Created by 林震軒 on 2014/2/27.
//  Copyright (c) 2014年 施亦宣. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TableViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSMutableArray *list;
    
}
@property (strong, nonatomic) IBOutlet UITableView *MyTable;
@property (strong, nonatomic) NSArray *imagelist;

//@property (strong, nonatomic) IBOutlet UICollectionView *CollectionView;

@end
