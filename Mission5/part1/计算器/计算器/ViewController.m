//
//  ViewController.m
//  计算器
//
//  Created by 沈洋 on 16/3/14.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_addNum setTag:1];
    [_subNum setTag:2];
    [_mulNum setTag:3];
    [_divNum setTag:4];
    
    [_addNum addTarget:self action:@selector(calculate:) forControlEvents:UIControlEventTouchUpInside];
    [_subNum addTarget:self action:@selector(calculate:) forControlEvents:UIControlEventTouchUpInside];
    [_mulNum addTarget:self action:@selector(calculate:) forControlEvents:UIControlEventTouchUpInside];
    [_divNum addTarget:self action:@selector(calculate:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)calculate:(UIButton *)opt{
    switch ((long)[opt tag]) {
        case 1:
            _flag.text = @"+";
            _result.text = [NSString stringWithFormat:@"%.2f",[_num1.text floatValue] + [_num2.text floatValue]];
            break;
        case 2:
            _flag.text = @"-";
            _result.text = [NSString stringWithFormat:@"%.2f",[_num1.text floatValue] - [_num2.text floatValue]];
            break;
        case 3:
            _flag.text = @"*";
            _result.text = [NSString stringWithFormat:@"%.2f",[_num1.text floatValue] * [_num2.text floatValue]];
            break;
        default:
            _flag.text = @"/";
            if ([_num2.text floatValue] != 0){
                _result.text = [NSString stringWithFormat:@"%.2f",[_num1.text floatValue] / [_num2.text floatValue]];}
            else{
                _result.text = @"除法中，除数不能为0";}
            break;
    }
    [self.view endEditing:YES];
}


@end
