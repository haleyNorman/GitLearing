//
//  ViewController.m
//  GitLearing
//
//  Created by lx on 2018/4/26.
//  Copyright © 2018年 lx. All rights reserved.
//

#import "ViewController.h"
#import "homeVc.h"
#import "myVc.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation ViewController
static NSString *const IDENTIFIER = @"conmmonCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:IDENTIFIER forIndexPath:indexPath];
    cell.textLabel.text = indexPath.row == 0 ? @"首页":@"我的页面";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        homeVc *home = [[homeVc alloc]init];
        [self.navigationController pushViewController:home animated:YES];
    } else {
        myVc *my = [[myVc alloc]init];
        [self.navigationController pushViewController:my animated:YES];
    }
}

-(UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:IDENTIFIER];
    }
    return _tableView;
}

@end
