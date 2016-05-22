//
//  HXShareManager.m
//  HXUmengShareEncapsulation
//
//  Created by Derek on 16/5/22.
//  Copyright © 2016年 huangxu. All rights reserved.
//

#import "HXShareManager.h"
#import "HXShareAction.h"
#import "HXShareAlert.h"

@interface HXShareManager ()
{
    UIViewController * _shareHostVC;
}
@property (nonatomic, strong) HXShareAction * actionView;
@property (nonatomic, strong) HXShareAlert  * alertView;

@end

@implementation HXShareManager

-(void)showShareViewWithVC:(UIViewController *)vc With:(ShareType *)shareType{
    _shareHostVC = vc;
    if (shareType == 0) {
        [self setActionView];
    }else{
        [self setShareAlert];
    }
}

-(HXShareAction *)setActionView{
    if (!_actionView) {
        
        
    }
    return _actionView;
}

-(HXShareAlert *)setShareAlert{
    if (!_alertView) {
        
        
    }
    return _alertView;
}


@end
