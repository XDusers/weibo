//
//  XDWeibo.h
//  04-微博（autolayout）
//
//  Created by HanXingda on 15/4/30.
//  Copyright (c) 2015年 韩兴达. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XDWeibo : NSObject
@property (nonatomic, copy)NSString *text;
@property (nonatomic, copy)NSString *icon;
@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *picture;
@property (nonatomic, assign, getter=isVip) BOOL vip;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)weiboWithDict:(NSDictionary *)dict;
@end
