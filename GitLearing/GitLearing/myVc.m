//
//  myVc.m
//  GitLearing
//
//  Created by lx on 2018/4/27.
//  Copyright © 2018年 lx. All rights reserved.
//

#import "myVc.h"

@interface myVc ()
@property(nonatomic,strong)UIView *redView;
@end

@implementation myVc

- (void)viewDidLoad {
    [super viewDidLoad];
    [self redView];
}

-(UIView *)redView{
    if (_redView == nil) {
        _redView = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 20)];
        _redView.backgroundColor = [UIColor redColor];
        [self.view addSubview:_redView];
    }
    return _redView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
