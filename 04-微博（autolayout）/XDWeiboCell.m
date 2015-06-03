//
//  XDWeiboCell.m
//  04-微博（autolayout）
//
//  Created by HanXingda on 15/4/30.
//  Copyright (c) 2015年 韩兴达. All rights reserved.
//

#import "XDWeiboCell.h"
@interface XDWeiboCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *vipImage;
@property (weak, nonatomic) IBOutlet UILabel *txtLable;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textConstraint;

@end
@implementation XDWeiboCell

+ (instancetype)WeiboCellWithTableView:(UITableView *)tableView
{
    NSString *ID = @"weibo_cell";
    XDWeiboCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    return cell;
}

-(void)setWeibo:(XDWeibo *)weibo
{
    _weibo = weibo;
    self.iconImage.image = [UIImage imageNamed:weibo.icon];
    self.nameLabel.text = weibo.name;
    self.txtLable.text = weibo.text;
    if (weibo.isVip) {
        self.vipImage.hidden = NO;
        self.vipImage.image = [UIImage imageNamed:@"vip"];
    }else{
        self.vipImage.hidden = YES;
    }
    if (weibo.picture) {
        self.bigImage.hidden = NO;
        self.bigImage.image = [UIImage imageNamed:weibo.picture];
        self.textConstraint.priority = UILayoutPriorityDefaultLow;
    }else{
        self.bigImage.hidden = YES;
        self.textConstraint.priority = UILayoutPriorityDefaultHigh;
    }

}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
