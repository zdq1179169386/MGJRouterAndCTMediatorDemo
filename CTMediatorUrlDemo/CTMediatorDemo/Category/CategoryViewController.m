//
//  CategoryViewController.m
//  MGJRouterDemo
//
//  Created by qrh on 2018/9/26.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "CategoryViewController.h"
#import "CTMediator+Next.h"
@interface CategoryViewController ()

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    [self.navigationController pushViewController: [[CTMediator sharedInstance] getNextVCWithTitle:@"next" block:^(NSString *name) {
//        NSLog(@"---%@",name);
//    }] animated:YES];
    
    NSString * urlStr = @"App://CategoryViewController/CategoryViewController";
    NSURL * url = [NSURL URLWithString:urlStr];
    UIViewController * vc = [[CTMediator sharedInstance] performActionWithUrl:url completion:NULL];
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
