//
//  HXShareManager.h
//  HXUmengShareEncapsulation
//
//  Created by Derek on 16/5/22.
//  Copyright © 2016年 huangxu. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM (NSInteger , ShareType){
    ActionSheetShareType = 0,
    AlertViewShareType = 1
};

@interface HXShareManager : NSObject


-(void)showShareViewWithVC:(UIViewController *)vc With:(ShareType *)shareType;

@end
