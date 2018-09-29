//
//  CTMediator+ZDCategory.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "CTMediator+ZDCategory.h"

@implementation CTMediator (ZDCategory)
- (UIViewController *)getCategoryVCWithTitle:(NSString *)title;
{
    NSMutableDictionary * dict = @{}.mutableCopy;
    [dict setValue:title forKey:@"title"];
    return [self performTarget:@"CategoryViewController" action:@"CategoryViewController" params:dict shouldCacheTarget:NO];
}
@end
