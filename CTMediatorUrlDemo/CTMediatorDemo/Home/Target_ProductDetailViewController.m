//
//  Target_ProductDetailViewController.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "Target_ProductDetailViewController.h"
#import "ProductDetailViewController.h"

@implementation Target_ProductDetailViewController

- (UIViewController *)Action_ProductDetailViewController:(NSDictionary *)param;
{
    ProductDetailViewController * vc = [ProductDetailViewController new];
    vc.name = param[@"name"];
    vc.navigationItem.title = param[@"title"];
    return vc;
}
@end
