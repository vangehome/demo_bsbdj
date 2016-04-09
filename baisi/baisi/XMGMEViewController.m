//
//  XMGMEViewController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGMEViewController.h"

@implementation XMGMEViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationItem.title=@"我的";
    //self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    UIButton* button=[UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    button.size=button.currentBackgroundImage.size;
    [button addTarget:self action:@selector(moreclick) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton* button2=[UIButton buttonWithType:UIButtonTypeCustom];
    [button2 setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [button2 setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
    button2.size=button.currentBackgroundImage.size;
    [button2 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];

    self.navigationItem.rightBarButtonItems=@[
                                              [[UIBarButtonItem alloc] initWithCustomView:button],
                                              
                                              [[UIBarButtonItem alloc] initWithCustomView:button2]
                                              ];
 
    
  
        
}
-(void)moreclick{
    
}
-(void)click2{
    
}
@end
