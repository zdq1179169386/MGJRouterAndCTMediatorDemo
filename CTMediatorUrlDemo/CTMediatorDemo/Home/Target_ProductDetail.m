//
//  Target_ProductDetailViewController.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "Target_ProductDetail.h"
#import "ProductDetailViewController.h"

@implementation Target_ProductDetail

- (UIViewController *)Action_GetProductDetailVC:(NSDictionary *)param;
{
    ProductDetailViewController * vc = [ProductDetailViewController new];
    vc.name = param[@"name"];
    vc.Id = param[@"Id"];
    vc.navigationItem.title = param[@"title"];
    return vc;
}
@end
