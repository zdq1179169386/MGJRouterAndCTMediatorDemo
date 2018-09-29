//
//  ZDTabBarViewController.m
//  MGJRouterDemo
//
//  Created by qrh on 2018/9/28.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "ZDTabBarViewController.h"
#import "CTMediator+Home.h"
#import "CTMediator+ZDCategory.h"
@interface ZDTabBarViewController ()

@end

@implementation ZDTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildVC:[[CTMediator sharedInstance] getHomeVCWithTitle:@"首页1"] title:@"首页" image:@"tabbar_platform_normal" selectedImage:@"tabbar_platform_select"];
    [self addChildVC:[[CTMediator sharedInstance] getCategoryVCWithTitle:@"分类1"]  title:@"分类" image:@"tabbar_mine_normal" selectedImage:@"tabbar_mine_select"];

}
- (void)addChildVC:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage;{
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:nav];
}
@end
