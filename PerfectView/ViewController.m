//
//  ViewController.m
//  PerfectView
//
//  Created by Yang,Dongzheng on 2018/9/17.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"UIView生命周期";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushButton setFrame:CGRectMake(100, 100, 300, 100)];
    [pushButton setBackgroundColor:[UIColor orangeColor]];
    [pushButton setTitle:@"点我" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    [pushButton setCenter:self.view.center];
}

- (void )pushView{
    HomeViewController * vc = [[HomeViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
