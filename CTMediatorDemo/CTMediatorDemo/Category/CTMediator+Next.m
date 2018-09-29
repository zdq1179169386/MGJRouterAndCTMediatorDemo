//
//  CTMediator+Next.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "CTMediator+Next.h"

@implementation CTMediator (Next)
- (UIViewController *)getNextVCWithTitle:(NSString *)title block:(void (^)(NSString *))block;
{
    NSMutableDictionary * dict = @{}.mutableCopy;
    [dict setValue:title forKey:@"title"];
    [dict setValue:block forKey:@"block"];
    return [self performTarget:@"NextViewController" action:@"NextViewController" params:dict shouldCacheTarget:NO];
}
@end
