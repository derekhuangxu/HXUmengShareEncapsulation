//
//  HXShareAction.m
//  HXUmengShareEncapsulation
//
//  Created by Derek on 16/5/22.
//  Copyright © 2016年 huangxu. All rights reserved.
//

#import "HXShareAction.h"

@interface HXShareAction ()
@property (nonatomic, strong) UIView * maskView;
@property (nonatomic, strong) UIView * keyView;



@end
@implementation HXShareAction

- (id)initWithVC:(UIView *)view{

    _keyView = view;

    return self;
}

-(void)createUI{
    
    UILabel * shareLeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 15, ScreenWidth, 15)];
    shareLeLabel.text = NSLocalizedString(@"分享到", nil);
    shareLeLabel.textColor = [UIColor grayColor];
    shareLeLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:shareLeLabel];
    
    
    CGFloat itemWidth = 75.0f;
    UIScrollView * shareScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(shareLeLabel.frame)+20, ScreenWidth, 80)];
    shareScrollView.contentSize = CGSizeMake(itemWidth*shareNameArray.count, 0);
    shareScrollView.showsVerticalScrollIndicator = NO;
    shareScrollView.bounces = NO;
    shareScrollView.showsHorizontalScrollIndicator = NO;
    [self addSubview:shareScrollView];
    
    for (int i = 0; i < shareNameArray.count; i++) {
        UIButton * shareBtn = [[UIButton alloc] initWithFrame:CGRectMake(itemWidth * i, 0, itemWidth, 80)];
        [shareBtn setImage:[UIImage imageNamed:shareImageArray[i]] forState:UIControlStateNormal];
        [shareBtn setTitle:shareNameArray[i] forState:UIControlStateNormal];
        shareBtn.tag    = i;
        [shareBtn addTarget:self action:@selector(shareAction:) forControlEvents:UIControlEventTouchUpInside];
        [shareScrollView addSubview:shareBtn];
    }
    
    UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    cancelBtn.frame = CGRectMake(10, self.frame.size.height - 50, self.frame.size.width - 20, 40);
    cancelBtn.layer.masksToBounds = YES;
    cancelBtn.layer.cornerRadius  = 6.0f;
    cancelBtn.layer.borderColor   = [[UIColor grayColor] CGColor];
    cancelBtn.layer.borderWidth   = 0.8f;
    cancelBtn.tintColor           = [UIColor grayColor];
    [cancelBtn setTitle:NSLocalizedString(@"取消", nil) forState:UIControlStateNormal];
    [cancelBtn addTarget:self action:@selector(hiddenShareView) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:cancelBtn];
}

#pragma mark - delegate Action
- (void)shareAction:(UIButton *)sender{
    _shareButtonTag = sender.tag;
    if (_delegate && [_delegate respondsToSelector:@selector(didTapShareButton:)]) {
        [_delegate didTapShareButton:self];
    }
}
-(void)hiddenShareView{
    if (_delegate && [_delegate respondsToSelector:@selector(didHiddenShareView:)]) {
        [_delegate didHiddenShareView:self];
    }
}
@end
