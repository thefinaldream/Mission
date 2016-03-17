//
//  ViewController.h
//  计算器
//
//  Created by 沈洋 on 16/3/14.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *num1;
@property (weak, nonatomic) IBOutlet UITextField *num2;
@property (weak, nonatomic) IBOutlet UIButton *addNum;
@property (weak, nonatomic) IBOutlet UIButton *subNum;
@property (weak, nonatomic) IBOutlet UIButton *mulNum;
@property (weak, nonatomic) IBOutlet UIButton *divNum;
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UILabel *flag;

@end

