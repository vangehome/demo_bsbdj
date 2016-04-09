//
//  XMGessenceViewController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGessenceViewController.h"

@implementation XMGessenceViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    //
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    UIButton* button=[UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
    button.size=button.currentBackgroundImage.size;
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:button];
    [button addTarget:self action:@selector(moreclick) forControlEvents:UIControlEventTouchUpInside];
    //UIButton* rightButton=[UIButton buttonWithType:<#(UIButtonType)#>];
    //self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] ];
}
-(void)moreclick{
    
   
}
@end
