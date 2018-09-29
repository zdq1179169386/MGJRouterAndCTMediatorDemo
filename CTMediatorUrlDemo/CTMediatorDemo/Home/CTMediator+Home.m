//
//  CTMediator+Home.m
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "CTMediator+Home.h"

@implementation CTMediator (Home)
- (UIViewController *)getHomeVCWithTitle:(NSString *)title;
{
    NSMutableDictionary * dict = @{}.mutableCopy;
    [dict setValue:title forKey:@"title"];
    return [self performTarget:@"ZDHomeViewController" action:@"ZDHomeViewController" params:dict shouldCacheTarget:NO];
}
@end
