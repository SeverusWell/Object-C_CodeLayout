//
//  ViewController.m
//  Demo1_万能公式
//
//  Created by tarena on 16/1/22.
//  Copyright © 2016年 Mitiin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.backgroundColor = [UIColor lightGrayColor];
    [button1 setTitle:@"Button1" forState:UIControlStateNormal];
    [self.view addSubview:button1];
    //    关闭系统自动翻译红线成约束的这个功能
    button1.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.backgroundColor = [UIColor blueColor];
    [button2 setTitle:@"Button2" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    button2.translatesAutoresizingMaskIntoConstraints = NO;
    
    
//    创建约束
    NSLayoutConstraint *c1 = [NSLayoutConstraint constraintWithItem: button1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:20];
//    约束添加到父视图
    [self.view addConstraint:c1];
    
    NSLayoutConstraint *c2 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
    [self.view addConstraint:c2];
    
    NSLayoutConstraint *c6 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:40];
    [self.view addConstraint:c6];
    
    
    
    NSLayoutConstraint *d1 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:button1 attribute:NSLayoutAttributeRight multiplier:1 constant:10];
    [self.view addConstraint:d1];
    
    NSLayoutConstraint *d2 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
    [self.view addConstraint:d2];
    
    NSLayoutConstraint *d3 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:-20];
    [self.view addConstraint:d3];
    
    NSLayoutConstraint *d5 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:button1 attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    [self.view addConstraint:d5];
    
    NSLayoutConstraint *d6 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:button1 attribute:NSLayoutAttributeHeight multiplier:1 constant:0];
    [self.view addConstraint:d6];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
