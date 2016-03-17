//
//  ViewController.h
//  UIButton
//
//  Created by 沈洋 on 16/3/15.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *codeMake;
@property (weak, nonatomic) IBOutlet UIButton *defaultButton;
@property (strong, nonatomic)  UIButton *btn;
@property (strong, nonatomic)  UIButton *choosed;
@property (strong, nonatomic)  UIButton *disabled;
@property (strong, nonatomic)  UIButton *normaled;
@end

