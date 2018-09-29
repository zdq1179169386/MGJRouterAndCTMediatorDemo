//
//  GlobalModuleRouter.m
//  MGJRouterDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "GlobalModuleRouter.h"
#import <MGJRouter/MGJRouter.h>
#import "ZDHomeViewController.h"
#import "CategoryViewController.h"
#import "ProductDetailViewController.h"
#import "NextViewController.h"
@implementation GlobalModuleRouter
+(void)load
{
    [MGJRouter registerURLPattern:@"mgj://app/gethome" toObjectHandler:^id(NSDictionary *routerParameters) {
        NSString * title = routerParameters[MGJRouterParameterUserInfo][@"title"];
        ZDHomeViewController * vc = [ZDHomeViewController new];
        vc.navigationItem.title = title;
        return vc;
    }];
    [MGJRouter registerURLPattern:@"mgj://app/getcategory" toObjectHandler:^id(NSDictionary *routerParameters) {
        NSString * title = routerParameters[MGJRouterParameterUserInfo][@"title"];
        CategoryViewController * vc = [CategoryViewController new];
        vc.navigationItem.title = title;
        return vc;
    }];
    [MGJRouter registerURLPattern:@"mgj://app/godetail" toHandler:^(NSDictionary *routerParameters) {
        NSString * title = routerParameters[MGJRouterParameterUserInfo][@"title"];
        UINavigationController * nav = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        NSString * name = routerParameters[MGJRouterParameterUserInfo][@"name"];
        ProductDetailViewController * vc = [ProductDetailViewController new];
        vc.navigationItem.title = title;
        vc.name = name;
        vc.hidesBottomBarWhenPushed = YES;
        [nav pushViewController:vc animated:YES];
    }];
    [MGJRouter registerURLPattern:@"mgj://app/gonext" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController * nav = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        void(^clicked)(NSString *) = routerParameters[MGJRouterParameterUserInfo][@"btnClickBlock"];
        NextViewController * vc = [NextViewController new];
        vc.btnClickBlock = clicked;
        vc.hidesBottomBarWhenPushed = YES;
        [nav pushViewController:vc animated:YES];
    }];
}

@end
