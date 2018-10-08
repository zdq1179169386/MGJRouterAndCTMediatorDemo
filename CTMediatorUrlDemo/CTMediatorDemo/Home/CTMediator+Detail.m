//
//  CTMediator+Detail.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "CTMediator+Detail.h"

@implementation CTMediator (Detail)
- (UIViewController *)getDetailVCWithTitle:(NSString *)title name:(NSString *)name;
{
    NSMutableDictionary * dict = @{}.mutableCopy;
    [dict setValue:name forKey:@"name"];
    [dict setValue:title forKey:@"title"];
    return [self performTarget:@"ProductDetail" action:@"GetProductDetailVC" params:dict shouldCacheTarget:NO];
}
@end
