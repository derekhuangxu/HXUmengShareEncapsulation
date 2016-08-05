//
//  HXShareAction.h
//  HXUmengShareEncapsulation
//
//  Created by Derek on 16/5/22.
//  Copyright © 2016年 huangxu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HXShareAction;
@protocol HXShareActionDelegate <NSObject>

-(void)didTapShareButton:(HXShareAction *)shareAction;
-(void)didHiddenShareView:(HXShareAction *)shareAction;


@end

@interface HXShareAction : UIView
@property (nonatomic, assign) NSInteger shareButtonTag;

@property (nonatomic, copy) id<HXShareActionDelegate> delegate;

@end
