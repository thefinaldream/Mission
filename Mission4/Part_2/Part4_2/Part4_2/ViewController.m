//
//  ViewController.m
//  Part4_2
//
//  Created by 沈洋 on 16/3/11.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import "ViewController.h"
#import "JKViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //定义按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setTitle:@"跳转至页面二" forState:UIControlStateNormal];
    [button setTitle:@"跳转至页面二" forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(messageChange:) name:MessageNotificationName object:nil];
}
/**
 *  <#Description#> 消息模式获取发送消息的字典封装，并更改第一页背景色
 *
 *  @param notify 获取到页面二消息按钮点击事件发送过来的消息
 */
- (void)messageChange:(NSNotification *)notify{
    NSDictionary *dict = notify.userInfo;
    self.view.backgroundColor = [dict objectForKey:@"RedBackgroup"];
}

/**
 *  <#Description#> 移除消息监听
 */
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


/**
 *  <#Description#> 页面一按钮，点击跳转到页面二及三种反调必用的方法
 */
- (void)clickButton {
    JKViewController *svc = [[JKViewController alloc] init];
    svc.delegate = self;
    //block
    __weak ViewController *weakSelf = self;
    [svc setBlublock:^(UIColor *color){
        weakSelf.view.backgroundColor = color;
    }];
    [self presentViewController:svc animated:YES completion:^{
        
    }];
}
//代理回调设置方法
- (void)setColor:(UIColor *)color{
    self.view.backgroundColor = color;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
