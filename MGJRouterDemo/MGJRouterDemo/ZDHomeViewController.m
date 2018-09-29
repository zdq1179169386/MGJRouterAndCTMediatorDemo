//
//  ZDHomeViewController.m
//  MGJRouterDemo
//
//  Created by qrh on 2018/9/28.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "ZDHomeViewController.h"
#import <MGJRouter/MGJRouter.h>

@interface ZDHomeViewController ()

@end

@implementation ZDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [MGJRouter openURL:@"mgj://app/godetail" withUserInfo:@{
                                                            @"title" : @"详情",
                                                            @"navigationVC" : self.navigationController,
                                                            @"name" : @"传值"
                                                            } completion:nil];
}
@end
