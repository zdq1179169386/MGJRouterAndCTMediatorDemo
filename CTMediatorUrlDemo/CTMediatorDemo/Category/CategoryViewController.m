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
    [self.navigationController pushViewController: [[CTMediator sharedInstance] getNextVCWithTitle:@"next" block:^(NSString *name) {
        NSLog(@"---%@",name);
    }] animated:YES];
}


@end
