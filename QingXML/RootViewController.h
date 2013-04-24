//
//  RootViewController.h
//  QingXML
//
//  Created by XmL on 13-4-17.
//  Copyright (c) 2013年 XmL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
#import "GDataXMLNode.h"
#import "myXMLdata.h"
#import "xmlString.h"
#import "ASIFormDataRequest.h"

@interface RootViewController : UIViewController
<ASIHTTPRequestDelegate>

{

    ASIHTTPRequest * myRequest;
    ASIFormDataRequest * myFormRequset;
    NSMutableArray * myArray;
    NSMutableArray * myTwoArray;
    UIButton * button;

}

@property (nonatomic,retain)NSMutableArray * myArray;
@property (nonatomic,retain)NSMutableArray * myTwoArray;



@end
