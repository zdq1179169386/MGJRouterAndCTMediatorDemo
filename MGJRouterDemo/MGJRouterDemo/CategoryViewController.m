//
//  CategoryViewController.m
//  MGJRouterDemo
//
//  Created by qrh on 2018/9/26.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "CategoryViewController.h"
#import <MGJRouter/MGJRouter.h>

@interface CategoryViewController ()

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [MGJRouter openURL:@"mgj://app/gonext" withUserInfo:@{
                                                          @"navigationVC" :  self.navigationController,
                                                          @"btnClickBlock" : ^(NSString * title){
        NSLog(@"---%@",title);
    }
                                                          } completion:nil];
}


@end
