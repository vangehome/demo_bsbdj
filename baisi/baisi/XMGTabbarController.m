//
//  XMGTabbarController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGTabbarController.h"
#import "XMGNewViewController.h"
#import "XMGMEViewController.h"
#import "XMGFriendTrendsViewController.h"
#import "XMGessenceViewController.h"
#import "XMGTabBar.h"
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
    
    [self addtab:[[XMGessenceViewController alloc] init] title: @"精华" image:@"tabBar_essence_icon" selectImg:@"tabBar_essence_click_icon"];
    [self addtab:[[XMGNewViewController alloc] init] title: @"新帖" image:@"tabBar_new_icon" selectImg:@"tabBar_new_click_icon"];
    [self addtab:[[XMGFriendTrendsViewController alloc] init] title: @"关注" image:@"tabBar_friendTrends_icon" selectImg:@"tabBar_friendTrends_click_icon"];

    [self addtab:[[XMGMEViewController alloc] init] title: @"我" image:@"tabBar_me_icon" selectImg:@"tabBar_me_click_icon"];
    ////////////
        [self setValue:[[XMGTabBar alloc] init] forKeyPath:@"tabBar"];
    
  }

//添加子控制器
-(void)addtab:(UIViewController*)vc title:(NSString*) title image:(NSString*)image selectImg:(NSString*)selectImg{
   
    vc.tabBarItem.title=title;
    vc.navigationItem.title=title;
    vc.tabBarItem.image=[UIImage imageNamed:image];
    
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectImg];
    vc.view.backgroundColor=[UIColor colorWithRed:arc4random_uniform(100)/100.0 green:arc4random_uniform(100)/100.0  blue:arc4random_uniform(100)/100.0  alpha:1.0];
    
    //
    UINavigationController* nav=[[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];

}

@end
