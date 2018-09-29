//
//  Target_ZDHomeViewController.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "Target_ZDHomeViewController.h"
#import "ZDHomeViewController.h"
@implementation Target_ZDHomeViewController

- (UIViewController *)Action_ZDHomeViewController:(NSDictionary *)param;
{
    ZDHomeViewController * vc = [ZDHomeViewController new];
    vc.navigationItem.title = param[@"title"];
    return vc;
}

@end
