//
//  HomeViewController.m
//  PerfectView
//
//  Created by Yang,Dongzheng on 2018/9/17.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import "HomeViewController.h"
#import "TestView.h"

@interface HomeViewController ()

@end

@implementation HomeViewController{
    TestView * _testView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UIView生命周期";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _testView = [[TestView alloc] init];
    [_testView setFrame:CGRectMake(0.f, 100, CGRectGetWidth(self.view.bounds), 44)];
    [_testView setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:_testView];
    [_testView setCenter:CGPointMake(CGRectGetWidth(self.view.bounds) / 2, CGRectGetHeight(self.view.bounds) / 2 - 50)];
    
    UIButton * removeButton = [self buttonWithTitle:@"移除" action:@selector(removeView)];
    [self.view addSubview:removeButton];
    [removeButton setCenter:self.view.center];
    
    UIButton * resetFrameButton = [self buttonWithTitle:@"重置Frame" action:@selector(resetFrame)];
    [self.view addSubview:resetFrameButton];
    [resetFrameButton setCenter:CGPointMake(CGRectGetWidth(self.view.bounds) / 2, CGRectGetHeight(self.view.bounds) / 2 + 50)];
    
    //    TestView * testSubView1 = [[TestView alloc] init];
    //    [testSubView1 setFrame:CGRectMake(0, 0, 10, 10)];
    //    [_testView addSubview:testSubView1];
}

- (UIButton *)buttonWithTitle:(NSString *)title action:(SEL)action {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 44)];
    [button setBackgroundColor:[UIColor redColor]];
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (void)removeView {
    [self.mainsubView removeFromSuperview];
}

- (void)resetFrame {
    [self.mainsubView setFrame:CGRectMake(0, 100, 100, 200)];
}

- (UIView *)mainsubView {
    return (UIView *)[[self.view subviews] firstObject];
}

@end
