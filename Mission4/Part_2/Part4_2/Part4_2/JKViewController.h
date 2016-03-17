//
//  JKViewController.h
//  Part4_2
//
//  Created by 沈洋 on 16/3/11.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AgentProtocol.h"
//通知用消息定义
#define MessageNotificationName @"MessageNotificationName"
//block用类型定义
typedef void (^BlueBlock) (UIColor *);
@interface JKViewController : UIViewController
//代理用属性
@property(assign,nonatomic)id <AgentProtocol> delegate;
//block用属性
@property(copy,nonatomic) BlueBlock blublock;
-(IBAction)setGreen:(id)sender;

@end
