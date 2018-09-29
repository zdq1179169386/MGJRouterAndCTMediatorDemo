//
//  Target_CategoryViewController.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "Target_CategoryViewController.h"
#import "CategoryViewController.h"
@implementation Target_CategoryViewController
- (UIViewController *)Action_CategoryViewController:(NSDictionary *)param;
{
    
    CategoryViewController * vc = [CategoryViewController new];
    vc.navigationItem.title = param[@"title"];
    return vc;
    
}
@end
