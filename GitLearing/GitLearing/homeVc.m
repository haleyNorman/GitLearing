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
    [self clickBtn];
}

-(UIButton *)clickBtn{
    if (_clickBtn == nil) {
        _clickBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 20)];
        _clickBtn.center = self.view.center;
        [_clickBtn setTitle:@"点我" forState:UIControlStateNormal];
        [self.view addSubview:_clickBtn];
    }
    return _clickBtn;
}

@end
