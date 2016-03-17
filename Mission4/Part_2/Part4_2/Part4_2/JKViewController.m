//
//  JKViewController.m
//  Part4_2
//
//  Created by 沈洋 on 16/3/11.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import "JKViewController.h"
#import "ViewController.h"

@implementation JKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    //定义消息模式传回按钮，设置前页为红色
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 100, 100, 40);
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitle:@"消息模式传回" forState:UIControlStateNormal];
    [button setTitle:@"消息模式传回" forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(setRed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    //定义代理模式传回按钮，设置前页为绿色
    UIButton *probutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    probutton.frame = CGRectMake(100, 200, 100, 40);
    [probutton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [probutton setTitle:@"代理模式传回" forState:UIControlStateNormal];
    [probutton setTitle:@"代理模式传回" forState:UIControlStateHighlighted];
    [probutton addTarget:self action:@selector(setGreen:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:probutton];
    //block模式传回按钮，设置前页为兰色
    UIButton *blockbutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    blockbutton.frame = CGRectMake(100, 300, 100, 40);
    [blockbutton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [blockbutton setTitle:@"block模式传回" forState:UIControlStateNormal];
    [blockbutton setTitle:@"block模式传回" forState:UIControlStateHighlighted];
    [blockbutton addTarget:self action:@selector(setBlue) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blockbutton];
}
/**
 *  <#Description#> 消息模式发送通知
 */
#pragma mark-notification to set red
- (void)setRed{
    [[NSNotificationCenter defaultCenter] postNotificationName:MessageNotificationName object:nil userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], @"RedBackgroup",nil]];
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
#pragma mark-deleagte to set Green
- (IBAction)setGreen:(id)sender{
    if ([_delegate respondsToSelector:@selector(setColor:)]){
        [_delegate setColor:[UIColor greenColor]];
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
    }
}
#pragma mark-block to set Blue
- (void)setBlue{
    if (_blublock){
        _blublock([UIColor blueColor]);
    }
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
