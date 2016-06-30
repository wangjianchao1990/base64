//
//  ViewController.m
//  base64
//
//  Created by MAC on 16/6/30.
//  Copyright © 2016年 Jchao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//加密
- (void)encryption{
    
    //1.获取需要加密文件的二进制数据
    //获取本地
    NSData *data = [NSData dataWithContentsOfFile:@"/Users/xxx/Desktop/123.jpg"];
    
    //2.获得加密之后的内容(二进制/字符串)
    NSString *base64Str = [data base64EncodedStringWithOptions:0];
    
    self.password = @"zxcbnmlkvjfidkxw";//将字符串拼接到加密文件中,提高加密的安全性
    base64Str = [base64Str stringByAppendingString:self.password];
    
    NSData *base64Data = [base64Str dataUsingEncoding:NSUTF8StringEncoding];
    
    //保存加密之后的数据
    [base64Data writeToFile:@"/Users/xxx/Desktop/加密文件" atomically:YES];
}

//解密
- (void)decrypt{
    //1.获取加密之后的二进制数据
    NSData *base64Data = [NSData dataWithContentsOfFile:@"/Users/xxx/Desktop/加密文件"];
    //2.解析
    NSData *data = [[NSData alloc] initWithBase64EncodedData:base64Data options:0];
    
    [data writeToFile:@"/User/xxx/Desktop/123" atomically:YES];
}

@end
