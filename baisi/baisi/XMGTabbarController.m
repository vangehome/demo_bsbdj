//
//  XMGTabbarController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGTabbarController.h"

@implementation XMGTabbarController

-(void)viewDidLoad{
    [super viewDidLoad];
      
    
    
    UIViewController* v1=[[UIViewController alloc ] init];
    
    
    v1.tabBarItem.title=@"精华";
    v1.tabBarItem.image=[UIImage imageNamed:@"tabBar_essence_icon"];
    v1.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    v1.view.backgroundColor=[UIColor grayColor];
    
   //============================设置tab属性=================================
    
    NSMutableDictionary* dic=[NSMutableDictionary dictionary];
    dic[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    dic[NSForegroundColorAttributeName]=[UIColor grayColor];
    
 
    NSMutableDictionary* selectdic=[NSMutableDictionary dictionary];
    selectdic[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectdic[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    
    UITabBarItem* item=[UITabBarItem appearance];//appearance 全局从设置tabbar属性,不需要再一个个更改
    
    [item setTitleTextAttributes:dic forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectdic forState:UIControlStateSelected];
    
    
    //属性设置结束
    UIViewController* v2=[[UIViewController alloc ] init];
    v2.tabBarItem.title=@"新帖";
    v2.tabBarItem.image=[UIImage imageNamed:@"tabBar_new_icon"];
    v2.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_new_click_icon"];    //标题
    
    UIViewController* v3=[[UIViewController alloc ] init];
    v3.tabBarItem.title=@"关注";
    v3.tabBarItem.image=[UIImage imageNamed:@"tabBar_friendTrends_icon"];
    v3.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_friendTrends_click_icon"];    //标题
    
    UIViewController* v4=[[UIViewController alloc ] init];
    v4.tabBarItem.title=@"我";
    v4.tabBarItem.image=[UIImage imageNamed:@"tabBar_me_icon"];
    v4.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_me_click_icon"];    //标题
    
    
    
    //添加到tabbar
    [self addChildViewController:v1];
    [self addChildViewController:v2];
    [self addChildViewController:v3];
    [self addChildViewController:v4];

}


@end
