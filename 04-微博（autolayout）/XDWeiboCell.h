//
//  XDWeiboCell.h
//  04-微博（autolayout）
//
//  Created by HanXingda on 15/4/30.
//  Copyright (c) 2015年 韩兴达. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XDWeibo.h"
@interface XDWeiboCell : UITableViewCell
+(instancetype)WeiboCellWithTableView:(UITableView *)tableView;
@property (nonatomic, strong)XDWeibo *weibo;
@end
