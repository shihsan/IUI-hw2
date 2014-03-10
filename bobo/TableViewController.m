//
//  TableViewController.m
//  hw1
//
//  Created by 林震軒 on 2014/2/27.
//  Copyright (c) 2014年 施亦宣. All rights reserved.
//

#import "TableViewController.h"
#import "DetailViewController.h"
#import "TableCell2.h"
#import "CollectionView.h"
#import "CollectionCell.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize MyTable;
//@synthesize CollectionView;

/*
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.MyTable.delegate = self;
    self.MyTable.dataSource = self;
    list = [[NSMutableArray alloc] initWithObjects:@"☻基本資料",@"☻學歷",@"☻興趣",@"☻專長",@"☻獎項", nil];
    self.imagelist = [[NSMutableArray alloc] initWithObjects:@"bob.png",@"star.gif",@"octopus.gif",@"crab.gif",@"boss_pee.gif",@"squirl.png",@"whale.png",nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    if(section == 0)
        return [list count];
    else
        return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TableCell";
    static NSString *CellIdentifier2 = @"TableCell2";
    static NSString *CellIdentifier3 = @"TableCell3";
    //static NSString *CellIdentifierTemp = @"";
    
    /*if (indexPath.section == 0 ) {
        CellIdentifierTemp = CellIdentifier;
    }
    else CellIdentifierTemp = CellIdentifier2;
    
    
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:CellIdentifierTemp
                             forIndexPath:indexPath];*/
    
    if (indexPath.section == 0) {
        UITableViewCell *cell = [self.MyTable
                                 dequeueReusableCellWithIdentifier:CellIdentifier
                                 forIndexPath:indexPath];
        if (cell == nil){
            cell = [[UITableViewCell alloc]
                    initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = [list objectAtIndex:indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
        
    }
    else if (indexPath.section == 1){
        UITableViewCell *cell = [self.MyTable
                                 dequeueReusableCellWithIdentifier:CellIdentifier3
                                 forIndexPath:indexPath];
        if (cell == nil){
            cell = [[UITableViewCell alloc]
                    initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier3];
        }
        cell.textLabel.text = @"☻台灣";
        //cell.textLabel.text = [list objectAtIndex:indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
       
        
    }
    else{
        TableCell2 *cell = (TableCell2 *)[self.MyTable dequeueReusableCellWithIdentifier:CellIdentifier2];
        
        if (cell == nil)
        {
            cell = [[TableCell2 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier2];
        }
        return cell;
        
    }
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0 || indexPath.section == 1)
        return 40;
    else
        return 150;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
        return @"[自我介紹]";
    else if (section == 1)
        return @"[我住的地方]";
    else
        return @"[最愛卡通人物]";
}





- (NSInteger)numberOfSectionsInCollectionView:(CollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(CollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.imagelist count];
}

- (CollectionCell *)collectionView:(CollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CollectionViewCellIdentifier forIndexPath:indexPath];
    
    long row = [indexPath row];
    cell.image.image  = [UIImage imageNamed:self.imagelist[row]];
    return cell;

    
}




- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"line"]) {
        DetailViewController *detailviewcontroller = segue.destinationViewController;
        NSIndexPath *indexpath = nil;
        //NSString *titlestring = nil;
        
        NSIndexPath *myIndexPath = [self.MyTable
                                    indexPathForSelectedRow];
        
        detailviewcontroller.labletitle = [list objectAtIndex:myIndexPath.row];
        
        
        indexpath = [self.MyTable indexPathForSelectedRow ];
        //titlestring = [list objectAtIndex:indexpath.row];
        
        //[[segue destinationViewController] setTitle:titlestring];
    }
    
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
