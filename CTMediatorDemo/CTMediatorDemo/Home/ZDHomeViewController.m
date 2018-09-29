//
//  ZDHomeViewController.m
//  MGJRouterDemo
//
//  Created by qrh on 2018/9/28.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "ZDHomeViewController.h"
#import "CTMediator+Detail.h"

@interface ZDHomeViewController ()

@end

@implementation ZDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController: [[CTMediator sharedInstance] getDetailVCWithTitle:@"详情" name:@"传值"] animated:YES];
}
@end
