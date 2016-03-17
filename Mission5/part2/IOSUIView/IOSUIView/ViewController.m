//
//  ViewController.m
//  IOSUIView
//
//  Created by 沈洋 on 16/3/14.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *white;
@property (weak, nonatomic) IBOutlet UIView *blue;
@property (weak, nonatomic) IBOutlet UIView *red;
@property (weak, nonatomic) IBOutlet UIView *gray;
@property (strong, nonatomic) IBOutlet UIView *black;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"五个UIView从外至内的frame,bounds,center分别为：");
    //输出blackView数据
    NSLog(@"frame为：%@，bounds为：%@，center为：%@",NSStringFromCGRect(_black.frame),NSStringFromCGRect(_black.bounds),NSStringFromCGPoint(_black.center));
    //通过blackView循环依次取出grayView,redView,blueView,whiteView数据
    UIView *viewname;
    for (int i = 2; i < 6; i++){
        viewname = [_black viewWithTag:i];
        NSLog(@"frame为：%@，bounds为：%@，center为：%@",NSStringFromCGRect(viewname.frame),NSStringFromCGRect(viewname.bounds),NSStringFromCGPoint(viewname.center));
    }
    
    
}


@end
