//
//  xmlString.m
//  QingXML
//
//  Created by XmL on 13-4-17.
//  Copyright (c) 2013年 XmL. All rights reserved.
//

#import "xmlString.h"

@interface xmlString ()

@end

@implementation xmlString

@synthesize jcheck,jversion,jxmlId,jaccount,jsecret,jnickname,jportrait,jlife,jbrilliant,jgold,jlevel,jschool,jexperience,jgoldmedal,jsilvermedal,jbronzemedal,jweekhighes,jupdatelife,jsinaflag,jtencentflag,jweixinflag,jqqzoneflag,jmailcount,jallfriends,jallmail,jhightestscore,jaccept,jmsgtype,jmsgcontent,jsendnickname,jcreatetime,jfaccount,jfnickname,jfportrait,jfhightestscore,jflevel,jfgoldmedal,jfsilvermedal,jfbronzemedal,jfaccepte;



-(void)dealloc
{
    
    [jmsgtype release];
    [jmsgcontent release];
    [jsendnickname release];
    [jcreatetime release];
    [jfaccount release];
    [jfnickname release];
    [jfportrait release];
    [jfhightestscore release];
    [jflevel release];
    [jfgoldmedal release];
    [jfsilvermedal release];
    [jfbronzemedal release];
    [jfaccepte release];
    
    
    
    
    [jcheck release];
    [jversion release];
    [jxmlId release];
    [jaccount release];
    [jsecret release];
    [jnickname release];
    [jportrait release];
    [jlife release];
    [jbrilliant release];
    [jgold release];
    [jlevel release];
    [jschool release];
    [jexperience release];
    [jgoldmedal release];
    [jsilvermedal release];
    [jbronzemedal release];
    [jweekhighes release];
    [jupdatelife release];
    [jsinaflag release];
    [jtencentflag release];
    [jweixinflag release];
    [jqqzoneflag release];
    [jmailcount release];
    [jallfriends release];
    [jallmail release];
    [jhightestscore release];
    [jaccept release];
    
    
    [super dealloc];
}

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
