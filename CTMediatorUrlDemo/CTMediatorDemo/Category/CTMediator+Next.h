//
//  CTMediator+Next.h
//  CTMediatorDemo
//
//  Created by qrh on 2018/9/29.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "CTMediator.h"

@interface CTMediator (Next)
- (UIViewController *)getNextVCWithTitle:(NSString *)title block:(void (^)(NSString *))block;
@end
