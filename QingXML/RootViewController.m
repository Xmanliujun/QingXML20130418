//
//  RootViewController.m
//  QingXML
//
//  Created by XmL on 13-4-17.
//  Copyright (c) 2013年 XmL. All rights reserved.
//

#import "RootViewController.h"
#import "myXMLdata.h"
#import "xmlString.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize myArray,myTwoArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)dealloc
{
    [myArray release];
    [myTwoArray release];
    [super dealloc];
}

- (void)requestFinished:(ASIHTTPRequest *)request
{
   
    
    if (request.tag==1000) {
      NSLog( @"下载内容：%@",[request responseString]);   

    self.myArray = [myXMLdata RemXmlString:[request responseString]];
    self.myTwoArray = [myXMLdata RemMailString:[request responseString]];
    
    
    NSLog(@"下载数组长度  %d",[self.myArray count]);
    if ([self.myTwoArray count] != 0) {
        xmlString * sXml = [self.myTwoArray objectAtIndex:0];
        NSLog(@"%@",sXml.jcheck);
        NSLog(@"%@",sXml.jnickname);
        NSLog(@"%@",sXml.jgold);
        NSLog(@"%@",sXml.jxmlId);
        
        
        
    }
    
    if ([self.myArray count] != 0) {
        xmlString * sXml = [self.myArray objectAtIndex:0];
        NSLog(@"%@",sXml.jcheck);
        NSLog(@"%@",sXml.jnickname);
        NSLog(@"%@",sXml.jgold);
        NSLog(@"%@",sXml.jxmlId);
        NSLog(@"** %@",sXml.jfaccount);
        NSLog(@"** %@",sXml.jfnickname);
        NSLog(@"** %@",sXml.jfhightestscore);
    }
       
      }
    
    
    if (request.tag == 1002) {
        NSLog(@"**denglu**%@",[request responseString]);
    }
    
    if (request.tag == 1003) {
        NSLog(@"**xinxin**%@",[request responseString]);
    }
    
    
    if (request.tag == 1004) {
        NSLog(@"**jiance**%@",[request responseString]);
    }
    if (request.tag == 1005) {
        NSLog(@"**yNoxin**%@",[request responseString]);
    }
    if (request.tag == 1006) {
        NSLog(@"**startGame**%@",[request responseString]);
    }
    if (request.tag == 1007) {
        NSLog(@"**gameover**%@",[request responseString]);
    }
    if (request.tag == 1008) {
        NSLog(@"**paiming**%@",[request responseString]);
    }
    if (request.tag == 1009) {
        NSLog(@"**xiaoyuan**%@",[request responseString]);
    }
    if (request.tag == 1010) {
        NSLog(@"**shangxin**%@",[request responseString]);
    }
    
    if (request.tag == 1011) {
        NSLog(@"**biaoji**%@",[request responseString]);
    }
    if (request.tag == 1012) {
        NSLog(@"**jinbi**%@",[request responseString]);
    }
    
    if (request.tag == 1013) {
        NSLog(@"**shengming**%@",[request responseString]);
    }
    
    if (request.tag == 1014) {
        NSLog(@"**tianjiahaoyou**%@",[request responseString]);
    }
    
    if (request.tag == 1015) {
        NSLog(@"**tongyihaoyou**%@",[request responseString]);
    }
}

-(void)requestFailed:(ASIHTTPRequest *)request
{
    NSLog(@"出错了！！！ %@",[request responseString]);


}


-(NSString *)generateURL:(NSString *)baseURL params:(NSMutableDictionary*)params
{
     NSLog(@"1");
    if (params) {
        NSMutableArray * pairs = [NSMutableArray array];
        for (NSString * key in params.keyEnumerator) {
            NSString * value = [params objectForKey:key];
            [pairs addObject:[NSString stringWithFormat:@"%@=%@",key,value]];
            
        }
        NSLog(@"%d",[pairs count]);
        NSString * query = [pairs componentsJoinedByString:@"&"];
        NSLog(@"query: %@",query);
        NSLog(@"baseURL:  %@",baseURL);
        NSString * url = [NSString stringWithFormat:@"%@?%@",baseURL,query];
        NSLog(@"url   %@",url);
        NSLog(@"123");
        return url;
        
    }else{
        NSLog(@"234");
        return baseURL;
        
    }
    
}
-(void)httpAsireques
{

    NSString * urlString = @"http://42.96.177.162/GameServer/api/regester/";
    NSString *account = @"liujun";
    NSString *secret = @"123456";
    NSString *nickName = @"西门射雕k092422.223";
    
    
    NSMutableDictionary *para = [NSMutableDictionary dictionaryWithObjectsAndKeys:account, @"account", secret, @"secret", nickName, @"nickname", nil];
    
    NSString * pUrl = [NSString stringWithFormat:@"%@",[self generateURL:urlString params:para]];
    
  
    
    pUrl = [pUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSLog(@"purl    %@",pUrl);
    
    
    NSURL * url = [NSURL URLWithString:pUrl];
    
    
    NSLog(@"******  %@",url);
    
    myRequest = [ASIHTTPRequest requestWithURL:url];
    myRequest.tag = 1000;
    myRequest.delegate = self;
    [myRequest startAsynchronous];
    
    
    

    
    
    
}

-(void)httpaxmlBtn:(UIButton *)btn
{
    [self httpAsireques];


}

-(void)httpXmlBtn:(UIButton * )btn
{

    NSLog( @"httpxmlbtn");
    [button removeTarget:self action:@selector(httpXmlBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [button addTarget:self action:@selector(httpaxmlBtn:) forControlEvents:UIControlEventTouchUpInside];
    

}

-(void)dengLu:(UIButton *)btn
{

    NSLog(@"dengLu");
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/login/?account=liujunWin&passwod=123456"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * dengRequest = [ASIHTTPRequest requestWithURL:url];
    dengRequest.tag  = 1002;
    dengRequest.delegate = self;
    [dengRequest startAsynchronous];
    
    
    

}

-(void)songXin:(UIButton *)btn
{

    NSLog(@"songXin");
    
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/giveheart/?account=liujun&nickname=西门射雕k092422.223&friendaccount=liujunWin"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * xinRequest = [ASIHTTPRequest requestWithURL:url];
    xinRequest.tag = 1003;
    xinRequest.delegate = self;
    [xinRequest startAsynchronous];
    
    
    
    

}

-(void)jianCe:(UIButton * )btn
{

    NSLog(@"jianCe");
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/whetherregestered/?account=liujun"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * jianCeRequest = [ASIHTTPRequest requestWithURL:url];
    jianCeRequest.tag = 1004;
    jianCeRequest.delegate = self;
    [jianCeRequest startAsynchronous];
    
    

}

-(void)ynosongXin:(UIButton *)btn
{

    NSLog(@"ynosongXin");
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/updatewhetheraccept/?account=liujunWin&accept=1"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * yNoRequest = [ASIHTTPRequest requestWithURL:url];
    yNoRequest.tag = 1005;
    yNoRequest.delegate = self;
    [yNoRequest startAsynchronous];
    
    

}
-(void)kaishiGame:(UIButton *)btn
{
    NSLog(@"kaishiGame");
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/startgame/?account=liujun&decreasegold=20"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * kaishiRequest = [ASIHTTPRequest requestWithURL:url];
    kaishiRequest.tag = 1006;
    kaishiRequest.delegate = self;
    [kaishiRequest startAsynchronous];

}

-(void)jieshuGame:(UIButton*)btn
{
    NSLog(@"jieshuGame");

    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/gameover/?account=liujunWin&gold=200&score=1000&experience=150"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * gameOver = [ASIHTTPRequest requestWithURL:url];
    gameOver.tag = 1007;
    gameOver.delegate = self;
    [gameOver startAsynchronous];
}

-(void)paiming:(UIButton *)btn
{

    NSLog(@"paiming");
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/worldrank/?account=liujunWin&begin=9&number=2"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * paiMingRequest = [ASIHTTPRequest requestWithURL:url];
    paiMingRequest.tag = 1008;
    paiMingRequest.delegate = self;
    [paiMingRequest startAsynchronous];

}

-(void)xiaoyuan:(UIButton * )btn
{

    NSLog(@"xiaoyuan");

    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/schoolrank/?account=zhycheng&begin=9&number=3&school=太原工业学院"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * xiaoyuanRequest = [ASIHTTPRequest requestWithURL:url];
    xiaoyuanRequest.tag = 1009;
    xiaoyuanRequest.delegate = self;
    [xiaoyuanRequest startAsynchronous];
    
    
}


-(void)shangxin:(UIButton *)btn
{

    NSLog(@"shangxin");
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/getsendhearttime/?account=liujun"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * shangxinRequest = [ASIHTTPRequest requestWithURL:url];
    shangxinRequest.tag = 1010;
    shangxinRequest.delegate = self;
    [shangxinRequest startAsynchronous];

}

-(void)biaoji:(UIButton *)btn
{

    NSLog(@"biaoji");
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/updateshareflag/?account=liujun&flagname=tencentflag&flag=0"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * biaojiRequest = [ASIHTTPRequest requestWithURL:url];
    biaojiRequest.tag = 1011;
    biaojiRequest.delegate = self;
    [biaojiRequest startAsynchronous];

}

-(void)jinbi:(UIButton *)btn
{

    NSLog(@"jinbi");
    
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/buygold/?account=liujun&count=50"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * jinbiRequest = [ASIHTTPRequest requestWithURL:url];
    jinbiRequest.tag = 1012;
    jinbiRequest.delegate = self;
    [jinbiRequest startAsynchronous];

}

-(void)shengming:(UIButton *)btn
{

    NSLog(@"shengming");
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/buylife/?account=liujun&count=30"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * shengmingRequest = [ASIHTTPRequest requestWithURL:url];
    shengmingRequest.tag = 1013;
    shengmingRequest.delegate = self;
    [shengmingRequest startAsynchronous];


}


-(void)tianjiahaoyou:(UIButton *)btn
{
    NSLog(@"tianjiahaoyou");
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/requestfriend/?myaccount=liujun&friend=liujunWin&nickname=西门射雕k092422.223&msgtype=5"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * tianjiaRequest = [ASIHTTPRequest requestWithURL:url];
    tianjiaRequest.tag = 1014;
    tianjiaRequest.delegate = self;
    [tianjiaRequest startAsynchronous];
    
    

}

-(void)tongyihaoyou:(UIButton*)btn
{

    NSLog(@"tongyihaoyou");
    
    
    NSString * sUrl = [NSString stringWithFormat:@"http://42.96.177.162/GameServer/api/acceptfriend/?myaccount=liujun&friendaccount=liujunWin"];
    sUrl = [sUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL * url = [NSURL URLWithString:sUrl];
    
    ASIHTTPRequest * tongyiRequest = [ASIHTTPRequest requestWithURL:url];
    tongyiRequest.tag = 1015;
    tongyiRequest.delegate = self;
    [tongyiRequest startAsynchronous];

}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    myArray = [[NSMutableArray alloc] initWithCapacity:0];
    myTwoArray = [[NSMutableArray alloc] initWithCapacity:0];
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(120, 200, 80, 40);
    [button setTitle:@"启动下载" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(httpXmlBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(120, 150, 80, 40);
    [button2 setTitle:@"登陆" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(dengLu:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton * button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(120, 100, 80, 40);
    [button3 setTitle:@"送心" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(songXin:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    UIButton * button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button4.frame = CGRectMake(120, 50, 80, 40);
    [button4 setTitle:@"检测" forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(jianCe:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    
    UIButton * button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button5.frame = CGRectMake(120, 250, 80, 40);
    [button5 setTitle:@"Y/N送心" forState:UIControlStateNormal];
    [button5 addTarget:self action:@selector(ynosongXin:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];
    
    UIButton * button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button6.frame = CGRectMake(120, 300, 80, 40);
    [button6 setTitle:@"开始游戏" forState:UIControlStateNormal];
    [button6 addTarget:self action:@selector(kaishiGame:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button6];
    
    UIButton * button7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button7.frame = CGRectMake(120, 350, 80, 40);
    [button7 setTitle:@"结束游戏" forState:UIControlStateNormal];
    [button7 addTarget:self action:@selector(jieshuGame:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button7];
    
    UIButton * button8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button8.frame = CGRectMake(120, 400, 80, 40);
    [button8 setTitle:@"世界排名" forState:UIControlStateNormal];
    [button8 addTarget:self action:@selector(paiming:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button8];
    
    
    UIButton * buttona = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttona.frame = CGRectMake(20, 50, 80, 40);
    [buttona setTitle:@"校园排名" forState:UIControlStateNormal];
    [buttona addTarget:self action:@selector(xiaoyuan:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttona];
    
    UIButton * buttonb = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonb.frame = CGRectMake(20, 100, 80, 40);
    [buttonb setTitle:@"上次送心" forState:UIControlStateNormal];
    [buttonb addTarget:self action:@selector(shangxin:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonb];
    
    UIButton * buttonc = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonc.frame = CGRectMake(20, 150, 80, 40);
    [buttonc setTitle:@"标记" forState:UIControlStateNormal];
    [buttonc addTarget:self action:@selector(biaoji:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonc];
    
    UIButton * buttond = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttond.frame = CGRectMake(20, 200, 80, 40);
    [buttond setTitle:@"z金币" forState:UIControlStateNormal];
    [buttond addTarget:self action:@selector(jinbi:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttond];
    
    UIButton * buttone = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttone.frame = CGRectMake(20, 250, 80, 40);
    [buttone setTitle:@"z生命" forState:UIControlStateNormal];
    [buttone addTarget:self action:@selector(shengming:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttone];
    
    UIButton * buttonf = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonf.frame = CGRectMake(20,300, 80, 40);
    [buttonf setTitle:@"添加好友" forState:UIControlStateNormal];
    [buttonf addTarget:self action:@selector(tianjiahaoyou:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonf];
    
    UIButton * buttong = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttong.frame = CGRectMake(20, 350, 80, 40);
    [buttong setTitle:@"同意好友" forState:UIControlStateNormal];
    [buttong addTarget:self action:@selector(tongyihaoyou:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttong];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
