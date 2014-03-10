//
//  DetailViewController.m
//  hw1
//
//  Created by 彭新雅 on 2/27/14.
//  Copyright (c) 2014 施亦宣. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
//@synthesize navbar;
@synthesize photo;
@synthesize textview;
@synthesize line;
@synthesize photo2;
@synthesize lable;
@synthesize labletitle;


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
	self.lable.text = labletitle;
    
	
    if ([self.lable.text isEqualToString:@"☻基本資料"]) {
        self.line.image = [UIImage imageNamed:@"line_1.gif"];
        self.photo.image = [UIImage imageNamed:@"bobo.jpg"];
        self.textview.text = @" ♥中文姓名：施亦宣\n ♥英文姓名：Yi-Hsuan Shih\n ♥綽號：飽飽、Bobo\n ♥性別：♀\n ♥生日：1992.09.14\n ♥血型：O 型\n ♥星座：處女座\n ♥身高：166 cm\n ♥慣用手：右手\n ♥駕照：汽、機車\n ♥聯繫方式：電話、facebook、\n       Line、E-mail\n ♥E-mail：100703001@nccu.edu.tw";
    }
    else if ([self.lable.text isEqualToString:@"☻學歷"]){
        self.line.image = [UIImage imageNamed:@"line_2.gif"];
        //self.photo.image = [UIImage imageNamed:@"bobo.jpg"];
        self.textview.text = @"\n\n ★國立政治大學資訊科學系（目前就讀）\n  -----------------------------------\n ★臺北市立中山女子高級中學\n  -----------------------------------\n ★臺北市市立中崙高中（附設國中部）\n  -----------------------------------\n ★臺北市信義區光復國小\n  -----------------------------------\n ★基督教台灣信義會蒙恩堂幼稚園";
    }
    else if ([self.lable.text isEqualToString:@"☻興趣"]){
        self.line.image = [UIImage imageNamed:@"line_3.gif"];
        //self.photo.image = [UIImage imageNamed:@"bobo.jpg"];
        self.textview.font = [UIFont fontWithName:@"Helvetica-Neue" size:16];
        self.textview.text = @" ♠運動類：排球、籃球、羽球、保齡球\n ♠靜態活動類：看小說、看電影、唱歌、逛街、做點心\n ♠喜歡的影星：\n       Anne Jacqueline Hathaway（安海瑟薇）、\n       Emma Charlotte Duerre Watson（艾瑪·華森）\n ♠喜歡的台灣歌手：周杰倫、五月天、蔡依林、林俊傑\n ♠喜歡的外國歌手：\n       Avril Lavigne（艾薇兒·拉維尼）、\n       Taylor Swift（泰勒絲）、\n       Bruno Mars（布魯諾·馬爾斯）\n ♠喜歡的食物：蒸蛋、牛排\n ♠喜歡的飲料：奶茶\n ♠喜歡的電影：神鬼奇航、惡靈古堡\n ♠喜歡的歌劇：羅密歐與茱麗葉（Roméo et Juliette）\n ♠喜歡的影集：Gossip Girl\n ♠喜歡的書籍：達文西密碼\n ♠喜歡的品牌：COACH、NIKE\n ♠喜歡的節目：食尚玩家、tlc\n ♠喜歡的季節：有陽光,適合散步、騎車的春天\n ♠喜歡的交通工具：捷運、自己開車\n ♠喜歡的狗狗品種：瑪爾濟斯、雪納瑞、拉不拉多\n ♠懷念的遊戲：瘋狂坦克\n ♠喜歡的博物館：羅浮宮\n ♠喜歡的國家：台灣\n ♠最想去的國家：北歐\n ♠最敬愛的人：父母\n ";
    }
    else if ([self.lable.text isEqualToString:@"☻專長"]){
        self.line.image = [UIImage imageNamed:@"line_4.gif"];
        self.photo2.image = [UIImage imageNamed:@"welcome.gif"];
        self.textview.text = @"\n\n  唱歌\n  尖叫\n  有待尋找......";
    }
    else if ([self.lable.text isEqualToString:@"☻獎項"]){
        self.line.image = [UIImage imageNamed:@"line_5.gif"];
        self.photo2.image = [UIImage imageNamed:@"winnie.gif"];
        self.textview.text = @"\n\n ▲國小組市長獎\n ▲國中組校長獎\n ▲中山女高班季大隊接力冠軍\n ▲中山女高班季詩歌朗誦比賽特優\n ▲高中組「98年智慧居家服務型機器人產品創意競賽」創意情境組佳作";
    }
    //self.navbar.title = self.title
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
