//
//  ViewController.m
//  UIButtonV2
//
//  Created by 沈洋 on 16/3/16.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *choose;
@property (weak, nonatomic) IBOutlet UIButton *normal;
@property (weak, nonatomic) IBOutlet UIButton *disable;
@property (strong,nonatomic) UIButton *btn;
@end

@implementation ViewController
//目标：用storyboard和代码完成UIButton课程的例子，给按钮设置选中和禁用图片 使用内边距属性，实现一个文字在左边，图片在右边的按钮。（实现：按钮为代码生成，三个功能按钮为storyboard实现）
- (void)viewDidLoad {
    [super viewDidLoad];
    _btn = [[UIButton alloc] init];
    _btn.frame = CGRectMake(40, 50, 240, 210);
    _btn.backgroundColor = [UIColor whiteColor];
    [_btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    _btn.titleEdgeInsets = UIEdgeInsetsMake(0.0, -700, 0.0, 0.0);
    _btn.imageEdgeInsets = UIEdgeInsetsMake(0.0, 100, 0.0, 0.0);
    [_btn setTitle:@"正常" forState:UIControlStateNormal];
    [_btn setTitle:@"禁用" forState:UIControlStateDisabled];
    [_btn setTitle:@"选中" forState:UIControlStateSelected];
    [_btn setImage: [UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];
    [_btn setImage: [UIImage imageNamed:@"2.png"] forState:UIControlStateSelected];
    [_btn setImage: [UIImage imageNamed:@"3.png"] forState:UIControlStateHighlighted];
    [_btn setImage: [UIImage imageNamed:@"4.png"] forState:UIControlStateDisabled];
    [_choose addTarget:self action:@selector(optButton:) forControlEvents:UIControlEventTouchUpInside];
    [_normal addTarget:self action:@selector(optButton:) forControlEvents:UIControlEventTouchUpInside];
    [_disable addTarget:self action:@selector(optButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}
/**
 *  <#Description#> 通过tag对图片按钮进行操作1.选中2.正常3.禁用
 *
 *  @param opt <#opt description#>
 */
- (void)optButton:(UIButton *)opt{
    switch ([opt tag]) {
        case 1:
            self.btn.selected = YES;
            break;
        case 2:
            _btn.selected = NO;
            _btn.highlighted = NO;
            _btn.enabled = YES;
            break;
        case 3:
            _btn.enabled = NO;
        default:
            break;
    }
}

@end
