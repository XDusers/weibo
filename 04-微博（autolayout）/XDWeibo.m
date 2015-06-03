
//
//  XDWeibo.m
//  04-微博（autolayout）
//
//  Created by HanXingda on 15/4/30.
//  Copyright (c) 2015年 韩兴达. All rights reserved.
//

#import "XDWeibo.h"

@implementation XDWeibo

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+ (instancetype)weiboWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}


@end
