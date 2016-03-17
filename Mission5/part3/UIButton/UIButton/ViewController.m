//
//  ViewController.m
//  UIButton
//
//  Created by 沈洋 on 16/3/15.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //根据第一个按钮和第二个标签初始化第二个按钮
    UIButton *btn = [[UIButton alloc ]init];
    btn.frame = CGRectMake(_codeMake.frame.origin.x, _codeMake.frame.origin.y + 50, _defaultButton.bounds.size.width, _defaultButton.bounds.size.height);
    btn.backgroundColor = [UIColor redColor];
    [btn setImage:[UIImage imageNamed:@"yuna2.jpg"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"yuna.jpg"] forState:UIControlStateHighlighted];
    [btn setTitle:@"代码设置按钮文字" forState:UIControlStateNormal];
    [btn setTitle:@"高亮文字" forState:UIControlStateHighlighted];
    [btn setTitle:@"选中状态" forState:UIControlStateSelected];
    [btn setTitle:@"禁用状态" forState:UIControlStateDisabled];
    [self.view addSubview:btn];
    //功能区：根据第二个按钮位置生成功能区平行的三个按钮，以对按钮一进行操作
    UIButton *choosed = [[UIButton alloc ] init];
    UIButton *disabled = [[UIButton alloc ] init];
    UIButton *normaled =[[UIButton alloc ] init];
    choosed.frame = CGRectMake(_codeMake.frame.origin.x, _btn.frame.origin.y + 400, 100, 40);
    disabled.frame = CGRectMake(_codeMake.frame.origin.x + 110, _btn.frame.origin.y + 400, 100, 40);
    normaled.frame = CGRectMake(_codeMake.frame.origin.x + 220, _btn.frame.origin.y + 400, 100, 40);
    choosed.backgroundColor = [UIColor blueColor];
    disabled.backgroundColor = [UIColor blueColor];
    normaled.backgroundColor = [UIColor blueColor];
    [choosed setTitle:@"选中状态" forState:UIControlStateNormal];
    [disabled setTitle:@"关闭状态" forState:UIControlStateNormal];
    [normaled setTitle:@"普通状态" forState:UIControlStateNormal];
    [self.view addSubview:choosed];
    [self.view addSubview:disabled];
    [self.view addSubview:normaled];
    [choosed setTag:10];
    [disabled setTag:20];
    [normaled setTag:30];
    [choosed addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
    [disabled addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
    [normaled addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
    
}
/**
 设置按钮一的状态函数
 */
-(void)changeButton:(UIButton *)changeb{
    switch ([changeb tag]) {
        case 10:
            if (_defaultButton.enabled == YES) {
                _btn.selected = YES;
                _defaultButton.selected = YES;
            }
            break;
        case 20:
            _defaultButton.enabled = NO;
            break;
        case 30:
            _defaultButton.enabled = YES;
            _defaultButton.selected = NO;
            _defaultButton.highlighted = NO;
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
