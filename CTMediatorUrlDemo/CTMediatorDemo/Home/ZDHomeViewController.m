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
    //ios : 区分安卓还是ios
    //teach: 教学中心，当模块之后，很难保证 多个模块里没有命名相同(url相同)的页面,所以加上一层判断，
    //productDetail : 商品详情页，如果其他的模块也有个商品详情页，所以前面加上模块名来区分。
    //App://home/productDetail?userId=xxx&studentId=xxx
    NSString * urlStr = @"http://www.baid.com/ios/home/productDetail?userId=xxx&studentId=xxx";
    NSURL * url = [NSURL URLWithString:[urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]];
    NSString * query = [url query];
    NSString * path = [url path];
    NSDictionary * queryDict = [self zh_dictionaryWithParamString:query];
    if ([path hasPrefix:@"/"]) {
        path = [path substringFromIndex:1];
    }
    NSArray * paths = [path componentsSeparatedByString:@"/"];
    NSLog(@"queryDict = %@",queryDict);
    NSLog(@"paths = %@",paths);

//    [self.navigationController pushViewController: [[CTMediator sharedInstance] getDetailVCWithTitle:@"详情" name:@"传值"] animated:YES];
}
- (NSDictionary *)zh_dictionaryWithParamString:(NSString *)zh_paramString
{
    if (zh_paramString == nil || [zh_paramString isEqualToString:@""]) {
        return nil;
    }
    NSArray *arr = [zh_paramString componentsSeparatedByString:@"&"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    for (int i = 0; i < arr.count; i++) {
        NSArray *str = [arr[i] componentsSeparatedByString:@"="];
        if (str.count == 2) {
            NSString *value = str[1];
            value = [value stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            [parameterDict setObject:value forKey:str[0]];
        }
        else if (str.count > 2){
            
            NSMutableString *appending = [[NSMutableString alloc] initWithCapacity:0];
            for (NSUInteger j = str.count - 1; j == 1; j--) {
                [appending appendString:str[j]];
            }
            
            NSString *value = [appending copy];
            value = [value stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            [parameterDict setObject:value forKey:str[0]];
        }
        else {
            NSLog(@"没有等号的参数跳过");
        }
    }
    
    return [parameterDict copy];
}

@end
