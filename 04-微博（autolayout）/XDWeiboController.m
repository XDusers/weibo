//
//  XDWeiboController.m
//  04-微博（autolayout）
//
//  Created by HanXingda on 15/4/30.
//  Copyright (c) 2015年 韩兴达. All rights reserved.
//

#import "XDWeiboController.h"
#import "XDWeibo.h"
#import "XDWeiboCell.h"
@interface XDWeiboController ()
@property (nonatomic, strong)NSArray *weibos;

@end

@implementation XDWeiboController


-(NSArray *)weibos
{
    if (_weibos == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"weibos.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *temparray = [NSMutableArray array];
        for (NSDictionary *dict in array) {
            XDWeibo *XDdict = [XDWeibo weiboWithDict:dict];
            [temparray addObject:XDdict];
        }
        _weibos = temparray;
    }
    return _weibos;


}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.estimatedRowHeight = 5;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.weibos.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XDWeibo *weibo = self.weibos[indexPath.row];
    XDWeiboCell *cell = [XDWeiboCell WeiboCellWithTableView:tableView];
    return cell;
    
}
@end
