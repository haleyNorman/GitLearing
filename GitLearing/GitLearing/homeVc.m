//
//  homeVc.m
//  GitLearing
//
//  Created by lx on 2018/4/27.
//  Copyright © 2018年 lx. All rights reserved.
//

#import "homeVc.h"

@interface homeVc ()
@property(nonatomic,strong)UIButton *clickBtn;
@end

@implementation homeVc

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self clickBtn];
}

-(UIButton *)clickBtn{
    if (_clickBtn == nil) {
        _clickBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 20)];
        _clickBtn.center = self.view.center;
        [_clickBtn setTitle:@"点我" forState:UIControlStateNormal];
        [_clickBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_clickBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_clickBtn];
    }
    return _clickBtn;
}

-(void)btnClick{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"我被点了" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                             //响应事件
                                                             NSLog(@"action = %@", action);
                                                         }];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}
@end
