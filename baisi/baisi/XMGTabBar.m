//
//  XMGTabBar.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGTabBar.h"
UIButton* _publishButton;
@implementation XMGTabBar
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        
        UIButton* publishButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        
      
        _publishButton=publishButton;
        
        

    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    _publishButton.frame=CGRectMake(0, 0, _publishButton.currentBackgroundImage.size.width, _publishButton.currentBackgroundImage.size.height);
    _publishButton.center=CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    [self addSubview:_publishButton];
    
    CGFloat buttonY=0;
    CGFloat buttonW=self.frame.size.width/5;
    CGFloat buttonH=self.frame.size.height;
    NSInteger index=0;
    for (UIView* button in self.subviews) {
        //
        
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        
        //CGFloat buttonX=buttonW*2;
        
        
        CGFloat buttonX=buttonW*((index>1)?(index+1):index);
        button.frame=CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index++;
    }
    
   
}
@end


