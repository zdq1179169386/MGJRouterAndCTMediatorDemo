//
//  Target_NextViewController.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "Target_NextViewController.h"
#import "NextViewController.h"
@implementation Target_NextViewController
- (UIViewController *)Action_NextViewController:(NSDictionary *)param;
{
    NextViewController * vc = [NextViewController new];
    vc.navigationItem.title = param[@"title"];
    void(^ clicked)(NSString *) = param[@"block"];
    vc.btnClickBlock = clicked;
    return vc;
}
@end
