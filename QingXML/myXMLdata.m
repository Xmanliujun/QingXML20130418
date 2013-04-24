//
//  myXMLdata.m
//  QingXML
//
//  Created by XmL on 13-4-17.
//  Copyright (c) 2013年 XmL. All rights reserved.
//

#import "myXMLdata.h"
#import "GDataXMLNode.h"
#import "xmlString.h"


@implementation myXMLdata


//注册解析好友
+(NSMutableArray * )RemXmlString:(NSString *)string
{
    NSMutableArray * array = [[[NSMutableArray alloc] initWithCapacity:0] autorelease];
    

    GDataXMLDocument * doc = [[[GDataXMLDocument alloc] initWithXMLString:string options:0 error:nil] autorelease];
    
    if (doc) {
        
        NSArray * item1 = [doc nodesForXPath:@"//root/check" error:nil];
        NSArray * item2 = [doc nodesForXPath:@"//root/version" error:nil];
        NSArray * item3 = [doc nodesForXPath:@"//root/id" error:nil];
        NSArray * item4 = [doc nodesForXPath:@"//root/account" error:nil];
        NSArray * item5 = [doc nodesForXPath:@"//root/secret" error:nil];
        NSArray * item6 = [doc nodesForXPath:@"//root/nickname" error:nil];
        NSArray * item7 = [doc nodesForXPath:@"//root/portrait" error:nil];
        NSArray * item8 = [doc nodesForXPath:@"//root/life" error:nil];
        NSArray * item9 = [doc nodesForXPath:@"//root/brilliant" error:nil];
        NSArray * item10 = [doc nodesForXPath:@"//root/gold" error:nil];
        NSArray * item11 = [doc nodesForXPath:@"//root/level" error:nil];
        NSArray * item12 = [doc nodesForXPath:@"//root/school" error:nil];
        NSArray * item13 = [doc nodesForXPath:@"//root/experience" error:nil];
        NSArray * item14 = [doc nodesForXPath:@"//root/goldmedal" error:nil];
        NSArray * item15 = [doc nodesForXPath:@"//root/silvermedal" error:nil];
        NSArray * item16 = [doc nodesForXPath:@"//root/bronzemedal" error:nil];
        NSArray * item17 = [doc nodesForXPath:@"//root/hightestscore" error:nil];
        NSArray * item18 = [doc nodesForXPath:@"//root/weekhighestscore" error:nil];
        NSArray * item19 = [doc nodesForXPath:@"//root/updatelifetime" error:nil];
        NSArray * item20 = [doc nodesForXPath:@"//root/sinaflag" error:nil];
        NSArray * item21 = [doc nodesForXPath:@"//root/tencentflag" error:nil];
        NSArray * item22 = [doc nodesForXPath:@"//root/weixinflag" error:nil];
        NSArray * item23 = [doc nodesForXPath:@"//root/qqzoneflag" error:nil];
        NSArray * item24 = [doc nodesForXPath:@"//root/mailcount" error:nil];
        NSArray * item25 = [doc nodesForXPath:@"//root/accept" error:nil];
        
        
        NSArray * itema = [doc nodesForXPath:@"//root/allmail" error:nil];
       
        
        NSArray * itemb = [doc nodesForXPath:@"//root/allfriends" error:nil];
        NSArray * itemaf1 = [doc nodesForXPath:@"//root/allfriends/friend/faccount" error:nil];
        NSArray * itemaf2 = [doc nodesForXPath:@"//root/allfriends/friend/fnickname" error:nil];
        NSArray * itemaf3 = [doc nodesForXPath:@"//root/allfriends/friend/fportrait" error:nil];
        NSArray * itemaf4 = [doc nodesForXPath:@"//root/allfriends/friend/fhightestscore" error:nil];
        NSArray * itemaf5 = [doc nodesForXPath:@"//root/allfriends/friend/flevel" error:nil];
        NSArray * itemaf6 = [doc nodesForXPath:@"//root/allfriends/friend/fgoldmedal" error:nil];
        NSArray * itemaf7 = [doc nodesForXPath:@"//root/allfriends/friend/fsilvermedal" error:nil];
        NSArray * itemaf8 = [doc nodesForXPath:@"//root/allfriends/friend/fbronzemedal" error:nil];
        NSArray * itemaf9 = [doc nodesForXPath:@"//root/allfriends/friend/faccepte" error:nil];

        
        
    
        for (int i = 0 ; i < [itema count]; i++) {
            
            GDataXMLNode * nodea = [itema objectAtIndex:i];
            NSLog(@"****** i %d",i + 1);
            
            for (int j = 0 ; j < nodea.childCount; j++) {
            NSLog(@"****** j %d",j + 1);
                
                
                
            }
            
        }
        
        for (int k = 0 ; k <[itemb count]; k++) {
            
            GDataXMLNode * nodeb = [itemb objectAtIndex:k];
            
            NSLog(@"****** k %d",k + 1);
            
            for (int l = 0 ; l < nodeb.childCount; l++) {
                
            NSLog(@"****** l %d",l + 1);
                
                
           
            
        
        
        
        xmlString * myXml = [[[xmlString alloc] init] autorelease];
                
                if ([itemaf1 count] != 0 ) {
                   GDataXMLElement * faccount = [itemaf1 objectAtIndex:l];
                   myXml.jfaccount = [NSString stringWithFormat:@"%@",faccount.stringValue];
            
                }
                if ([itemaf2 count] != 0) {
                    GDataXMLElement * fnickname = [itemaf2 objectAtIndex:l];
                    myXml.jfnickname = [NSString stringWithFormat:@"%@",fnickname.stringValue];
                    
                }
                if ([itemaf3 count] != 0 ) {
                    GDataXMLElement * fportrait = [itemaf3 objectAtIndex:l];
                    myXml.jfportrait = [NSString stringWithFormat:@"%@",fportrait.stringValue];
                    
                }
                if ([itemaf4 count] != 0 ) {
                    GDataXMLElement * fhightestscore = [itemaf4 objectAtIndex:l];
                    myXml.jfhightestscore = [NSString stringWithFormat:@"%@",fhightestscore.stringValue];
                }
                if ([itemaf5 count] != 0 ) {
                    GDataXMLElement * flevel = [itemaf5 objectAtIndex:l];
                    myXml.jflevel = [NSString stringWithFormat:@"%@",flevel.stringValue];
                    
                }
                if ([itemaf6 count] != 0) {
                    GDataXMLElement * fgoldmendal = [itemaf6 objectAtIndex:l];
                    myXml.jgoldmedal = [NSString stringWithFormat:@"%@",fgoldmendal.stringValue];
                    
                }
                if ([itemaf7 count] != 0) {
                    GDataXMLElement * fsilvermedal = [itemaf7 objectAtIndex:l];
                    myXml.jfsilvermedal = [NSString stringWithFormat:@"%@",fsilvermedal.stringValue];
                    
                }
                if ([itemaf8 count] != 0) {
                    GDataXMLElement * fbronzemedal = [itemaf8 objectAtIndex:l];
                    myXml.jfbronzemedal = [NSString stringWithFormat:@"%@",fbronzemedal.stringValue];
                    
                }
                if ([itemaf9 count] != 0) {
                    GDataXMLElement * faccepte = [itemaf9 objectAtIndex:l];
                    myXml.jfaccepte = [NSString stringWithFormat:@"%@",faccepte.stringValue];
                }
                
                
                
                
                
                
                
        
        if ([item1 count] != 0) {
            GDataXMLElement * mCheck = [item1 objectAtIndex:0];
            myXml.jcheck = [NSString stringWithFormat:@"%@",mCheck.stringValue];
        }
        if ([item2 count] != 0) {
            GDataXMLElement * mVer = [item2 objectAtIndex:0];
            myXml.jversion = [NSString stringWithFormat:@"%@",mVer.stringValue];
            
        }
        if ([item3 count] != 0) {
            GDataXMLElement * mId = [item3 objectAtIndex:0];
            myXml.jxmlId = [NSString stringWithFormat:@"%@",mId.stringValue];
            
        }
        if ([item4 count] != 0) {
            GDataXMLElement * mAcc = [item4 objectAtIndex:0];
            myXml.jaccount = [NSString stringWithFormat: @"%@",mAcc.stringValue];
            
        }
        if ([item5 count] != 0) {
            GDataXMLElement * mSecr = [item5 objectAtIndex:0];
            myXml.jsecret = [NSString stringWithFormat:@"%@",mSecr.stringValue];
            
        }
        if ([item6 count] != 0) {
            GDataXMLElement * mNick = [item6 objectAtIndex:0];
            myXml.jnickname = [NSString stringWithFormat:@"%@",mNick.stringValue];
            
        }
        if ([item7 count] != 0) {
            GDataXMLElement * mPort = [item7 objectAtIndex:0];
            myXml.jportrait = [NSString stringWithFormat:@"%@",mPort.stringValue];
            
        }
        if ([item8 count] != 0) {
            GDataXMLElement * mLife = [item8 objectAtIndex:0];
            myXml.jlife = [NSString stringWithFormat:@"%@",mLife.stringValue];
            
        }
        if ([item9 count] != 0) {
            GDataXMLElement * mBrill = [item9 objectAtIndex:0];
            myXml.jbrilliant = [NSString stringWithFormat:@"%@",mBrill.stringValue];
            
        }
        if ([item10 count] != 0) {
            GDataXMLElement * mGold = [item10 objectAtIndex:0];
            myXml.jgold = [NSString stringWithFormat:@"%@",mGold.stringValue];
            
        }
        if ([item11 count] != 0) {
            GDataXMLElement * mLevel = [item11 objectAtIndex:0];
            myXml.jlevel = [NSString stringWithFormat:@"%@",mLevel.stringValue];
            
        }
        if ([item12 count] != 0) {
            GDataXMLElement * mSchool = [item12 objectAtIndex:0];
            myXml.jschool = [NSString stringWithFormat:@"%@",mSchool.stringValue];
            
        }
        if ([item13 count] != 0) {
            GDataXMLElement * mExp = [item13 objectAtIndex:0];
            myXml.jexperience = [NSString stringWithFormat:@"%@",mExp.stringValue];
            
        }
        if ([item14 count] != 0) {
            GDataXMLElement * mGoldMedal = [item14 objectAtIndex:0];
            myXml.jgoldmedal = [NSString stringWithFormat:@"%@",mGoldMedal.stringValue];
            
        }
        if ([item15 count] != 0) {
            GDataXMLElement * mSilver = [item15 objectAtIndex:0];
            myXml.jsilvermedal = [NSString stringWithFormat:@"%@",mSilver.stringValue];
            
        }
        if ([item16 count] != 0) {
            GDataXMLElement * mBronz = [item16 objectAtIndex:0];
            myXml.jbronzemedal = [NSString stringWithFormat:@"%@",mBronz.stringValue];
            
        }
        if ([item17 count] != 0) {
            GDataXMLElement * mHight = [item17 objectAtIndex:0];
            myXml.jhightestscore = [NSString stringWithFormat:@"%@",mHight.stringValue];
            
        }
        if ([item18 count] != 0) {
            GDataXMLElement * mWeek = [item18 objectAtIndex:0];
            myXml.jweekhighes = [NSString stringWithFormat:@"%@",mWeek.stringValue];
            
        }
        if ([item19 count] != 0) {
            GDataXMLElement * mUpdate = [item19 objectAtIndex:0];
            myXml.jupdatelife = [NSString stringWithFormat:@"%@",mUpdate.stringValue];
            
        }
        if ([item20 count] != 0) {
            GDataXMLElement * mSina = [item20 objectAtIndex:0];
            myXml.jsinaflag = [NSString stringWithFormat:@"%@",mSina.stringValue];
            
        }
        if ([item21 count] != 0) {
            GDataXMLElement * mTen = [item21 objectAtIndex:0];
            myXml.jtencentflag = [NSString stringWithFormat:@"%@",mTen.stringValue];
            
        }
        if ([item22 count] != 0) {
            GDataXMLElement * mWei = [item22 objectAtIndex:0];
            myXml.jweixinflag = [NSString stringWithFormat:@"%@",mWei.stringValue];
            
        }
        if ([item23 count] != 0) {
            GDataXMLElement * mQqz = [item23 objectAtIndex:0];
            myXml.jqqzoneflag = [NSString stringWithFormat:@"%@",mQqz.stringValue];
            
        }
        if ([item24 count] != 0) {
            GDataXMLElement * mMail = [item24 objectAtIndex:0];
            myXml.jmailcount = [NSString stringWithFormat:@"%@",mMail.stringValue];
        }
        if ([item25 count] != 0) {
            GDataXMLElement * mAccept = [item25 objectAtIndex:0];
            myXml.jaccept = [NSString stringWithFormat:@"%@",mAccept.stringValue];
            
            
        }
        
        
        
        [array addObject:myXml];
        myXml = nil;
        
         NSLog(@"预定数组长度 %d",[array count]);
                
                
                
                
            }
            
            
            
            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    return array;
}









//注册解析邮箱
+(NSMutableArray * )RemMailString:(NSString *)string
{
    NSMutableArray * array = [[[NSMutableArray alloc] initWithCapacity:0] autorelease];
    
    
    GDataXMLDocument * doc = [[[GDataXMLDocument alloc] initWithXMLString:string options:0 error:nil] autorelease];
    
    if (doc) {
        
        NSArray * item1 = [doc nodesForXPath:@"//root/check" error:nil];
        NSArray * item2 = [doc nodesForXPath:@"//root/version" error:nil];
        NSArray * item3 = [doc nodesForXPath:@"//root/id" error:nil];
        NSArray * item4 = [doc nodesForXPath:@"//root/account" error:nil];
        NSArray * item5 = [doc nodesForXPath:@"//root/secret" error:nil];
        NSArray * item6 = [doc nodesForXPath:@"//root/nickname" error:nil];
        NSArray * item7 = [doc nodesForXPath:@"//root/portrait" error:nil];
        NSArray * item8 = [doc nodesForXPath:@"//root/life" error:nil];
        NSArray * item9 = [doc nodesForXPath:@"//root/brilliant" error:nil];
        NSArray * item10 = [doc nodesForXPath:@"//root/gold" error:nil];
        NSArray * item11 = [doc nodesForXPath:@"//root/level" error:nil];
        NSArray * item12 = [doc nodesForXPath:@"//root/school" error:nil];
        NSArray * item13 = [doc nodesForXPath:@"//root/experience" error:nil];
        NSArray * item14 = [doc nodesForXPath:@"//root/goldmedal" error:nil];
        NSArray * item15 = [doc nodesForXPath:@"//root/silvermedal" error:nil];
        NSArray * item16 = [doc nodesForXPath:@"//root/bronzemedal" error:nil];
        NSArray * item17 = [doc nodesForXPath:@"//root/hightestscore" error:nil];
        NSArray * item18 = [doc nodesForXPath:@"//root/weekhighestscore" error:nil];
        NSArray * item19 = [doc nodesForXPath:@"//root/updatelifetime" error:nil];
        NSArray * item20 = [doc nodesForXPath:@"//root/sinaflag" error:nil];
        NSArray * item21 = [doc nodesForXPath:@"//root/tencentflag" error:nil];
        NSArray * item22 = [doc nodesForXPath:@"//root/weixinflag" error:nil];
        NSArray * item23 = [doc nodesForXPath:@"//root/qqzoneflag" error:nil];
        NSArray * item24 = [doc nodesForXPath:@"//root/mailcount" error:nil];
        NSArray * item25 = [doc nodesForXPath:@"//root/accept" error:nil];
        
        
        NSArray * itema = [doc nodesForXPath:@"//root/allmail" error:nil];
        NSArray * itemam1 = [doc nodesForXPath:@"//root/allmail/mail/msgtype" error:nil];
        NSArray * itemam2 = [doc nodesForXPath:@"//root/allmail/mail/msgcontent" error:nil];
        NSArray * itemam3 = [doc nodesForXPath:@"//root/allmail/mail/sendnickname" error:nil];
        NSArray * itemam4 = [doc nodesForXPath:@"//root/allmail/mail/createtime" error:nil];

        
        
        
//        for (int i = 0 ; i < [itema count]; i++) {
//            
//            GDataXMLNode * nodea = [itema objectAtIndex:i];
//            NSLog(@"****** i %d",i + 1);
//            
//            for (int j = 0 ; j < nodea.childCount; j++) {
//                NSLog(@"****** j %d",j + 1);
//                
//                
//                
//            }
//            
//        }
//        
        for (int k = 0 ; k <[itema count]; k++) {
            
            GDataXMLNode * nodeb = [itema objectAtIndex:k];
            
            NSLog(@"****** k %d",k + 1);
            
            for (int l = 0 ; l < nodeb.childCount; l++) {
                
                NSLog(@"****** l %d",l + 1);
                
                
                
                
                
                
                
                xmlString * myXml = [[[xmlString alloc] init] autorelease];
                
                if ([itemam1 count] != 0 ) {
                    GDataXMLElement * msgtype = [itemam1 objectAtIndex:l];
                    myXml.jmsgtype = [NSString stringWithFormat: @"%@",msgtype.stringValue];
                    
                }
                if ([itemam2 count] != 0) {
                    GDataXMLElement * msgcontent = [itemam2 objectAtIndex:l];
                    myXml.jmsgcontent = [NSString stringWithFormat:@"%@",msgcontent.stringValue];
                    
                }
                if ([itemam3 count] != 0) {
                    GDataXMLElement * sendnickname = [itemam3 objectAtIndex:l];
                    myXml.jsendnickname = [NSString stringWithFormat:@"%@",sendnickname.stringValue];
                    
                }
                if ([itemam4 count] != 0) {
                    GDataXMLElement * createtime = [itemam4 objectAtIndex:l];
                    myXml.jcreatetime = [NSString stringWithFormat:@"%@",createtime.stringValue];
                    
                }
                
                
                
                
                
                
                
                if ([item1 count] != 0) {
                    GDataXMLElement * mCheck = [item1 objectAtIndex:0];
                    myXml.jcheck = [NSString stringWithFormat:@"%@",mCheck.stringValue];
                }
                if ([item2 count] != 0) {
                    GDataXMLElement * mVer = [item2 objectAtIndex:0];
                    myXml.jversion = [NSString stringWithFormat:@"%@",mVer.stringValue];
                    
                }
                if ([item3 count] != 0) {
                    GDataXMLElement * mId = [item3 objectAtIndex:0];
                    myXml.jxmlId = [NSString stringWithFormat:@"%@",mId.stringValue];
                    
                }
                if ([item4 count] != 0) {
                    GDataXMLElement * mAcc = [item4 objectAtIndex:0];
                    myXml.jaccount = [NSString stringWithFormat: @"%@",mAcc.stringValue];
                    
                }
                if ([item5 count] != 0) {
                    GDataXMLElement * mSecr = [item5 objectAtIndex:0];
                    myXml.jsecret = [NSString stringWithFormat:@"%@",mSecr.stringValue];
                    
                }
                if ([item6 count] != 0) {
                    GDataXMLElement * mNick = [item6 objectAtIndex:0];
                    myXml.jnickname = [NSString stringWithFormat:@"%@",mNick.stringValue];
                    
                }
                if ([item7 count] != 0) {
                    GDataXMLElement * mPort = [item7 objectAtIndex:0];
                    myXml.jportrait = [NSString stringWithFormat:@"%@",mPort.stringValue];
                    
                }
                if ([item8 count] != 0) {
                    GDataXMLElement * mLife = [item8 objectAtIndex:0];
                    myXml.jlife = [NSString stringWithFormat:@"%@",mLife.stringValue];
                    
                }
                if ([item9 count] != 0) {
                    GDataXMLElement * mBrill = [item9 objectAtIndex:0];
                    myXml.jbrilliant = [NSString stringWithFormat:@"%@",mBrill.stringValue];
                    
                }
                if ([item10 count] != 0) {
                    GDataXMLElement * mGold = [item10 objectAtIndex:0];
                    myXml.jgold = [NSString stringWithFormat:@"%@",mGold.stringValue];
                    
                }
                if ([item11 count] != 0) {
                    GDataXMLElement * mLevel = [item11 objectAtIndex:0];
                    myXml.jlevel = [NSString stringWithFormat:@"%@",mLevel.stringValue];
                    
                }
                if ([item12 count] != 0) {
                    GDataXMLElement * mSchool = [item12 objectAtIndex:0];
                    myXml.jschool = [NSString stringWithFormat:@"%@",mSchool.stringValue];
                    
                }
                if ([item13 count] != 0) {
                    GDataXMLElement * mExp = [item13 objectAtIndex:0];
                    myXml.jexperience = [NSString stringWithFormat:@"%@",mExp.stringValue];
                    
                }
                if ([item14 count] != 0) {
                    GDataXMLElement * mGoldMedal = [item14 objectAtIndex:0];
                    myXml.jgoldmedal = [NSString stringWithFormat:@"%@",mGoldMedal.stringValue];
                    
                }
                if ([item15 count] != 0) {
                    GDataXMLElement * mSilver = [item15 objectAtIndex:0];
                    myXml.jsilvermedal = [NSString stringWithFormat:@"%@",mSilver.stringValue];
                    
                }
                if ([item16 count] != 0) {
                    GDataXMLElement * mBronz = [item16 objectAtIndex:0];
                    myXml.jbronzemedal = [NSString stringWithFormat:@"%@",mBronz.stringValue];
                    
                }
                if ([item17 count] != 0) {
                    GDataXMLElement * mHight = [item17 objectAtIndex:0];
                    myXml.jhightestscore = [NSString stringWithFormat:@"%@",mHight.stringValue];
                    
                }
                if ([item18 count] != 0) {
                    GDataXMLElement * mWeek = [item18 objectAtIndex:0];
                    myXml.jweekhighes = [NSString stringWithFormat:@"%@",mWeek.stringValue];
                    
                }
                if ([item19 count] != 0) {
                    GDataXMLElement * mUpdate = [item19 objectAtIndex:0];
                    myXml.jupdatelife = [NSString stringWithFormat:@"%@",mUpdate.stringValue];
                    
                }
                if ([item20 count] != 0) {
                    GDataXMLElement * mSina = [item20 objectAtIndex:0];
                    myXml.jsinaflag = [NSString stringWithFormat:@"%@",mSina.stringValue];
                    
                }
                if ([item21 count] != 0) {
                    GDataXMLElement * mTen = [item21 objectAtIndex:0];
                    myXml.jtencentflag = [NSString stringWithFormat:@"%@",mTen.stringValue];
                    
                }
                if ([item22 count] != 0) {
                    GDataXMLElement * mWei = [item22 objectAtIndex:0];
                    myXml.jweixinflag = [NSString stringWithFormat:@"%@",mWei.stringValue];
                    
                }
                if ([item23 count] != 0) {
                    GDataXMLElement * mQqz = [item23 objectAtIndex:0];
                    myXml.jqqzoneflag = [NSString stringWithFormat:@"%@",mQqz.stringValue];
                    
                }
                if ([item24 count] != 0) {
                    GDataXMLElement * mMail = [item24 objectAtIndex:0];
                    myXml.jmailcount = [NSString stringWithFormat:@"%@",mMail.stringValue];
                }
                if ([item25 count] != 0) {
                    GDataXMLElement * mAccept = [item25 objectAtIndex:0];
                    myXml.jaccept = [NSString stringWithFormat:@"%@",mAccept.stringValue];
                    
                    
                }
                
                
                
                [array addObject:myXml];
                myXml = nil;
                
                NSLog(@"预定数组长度 %d",[array count]);
                
                
                
                
            }
            
            
            
            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    return array;





}

//登陆解析
+(NSMutableArray * )RemDengLuString:(NSString *)string
{
    NSMutableArray * dengArray = [[[NSMutableArray alloc] initWithCapacity:0] autorelease];
    

    
    
    
    
    

    return dengArray;
}





@end
