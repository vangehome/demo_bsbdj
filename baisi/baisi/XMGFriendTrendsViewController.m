//
//  XMGFriendTrendsViewController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGFriendTrendsViewController.h"

@implementation XMGFriendTrendsViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationItem.title=@"我的关注";
    UIButton* butleft=[UIButton buttonWithType:UIButtonTypeCustom];
    [butleft setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon"] forState:UIControlStateNormal];
    [butleft setBackgroundImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] forState:UIControlStateHighlighted];
    butleft.size=butleft.currentBackgroundImage.size;
    [butleft addTarget:self action:@selector(butfriendclick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:butleft];
}
-(void)butfriendclick{
    XMGLogFun;
}
@end
