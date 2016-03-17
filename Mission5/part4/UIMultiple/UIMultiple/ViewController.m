//
//  ViewController.m
//  UIMultiple
//
//  Created by 沈洋 on 16/3/15.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *targetImage;
@property (weak, nonatomic) IBOutlet UISlider *controlSlider;
@property (weak, nonatomic) IBOutlet UISwitch *turnSwitch;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.controlSlider addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    
    [self.turnSwitch addTarget:self action:@selector(change:)forControlEvents:UIControlEventTouchUpInside];
}
/**
    更改方法：包含alpha修改和是否可以编辑slider
 */
-(void) change:(UIView*)opt{
    switch ([opt tag]) {
        case 1:
            _targetImage.alpha = _controlSlider.value/100;
            break;
        case 2:
            if (_turnSwitch.isOn) {
                _controlSlider.enabled = YES;
            }else{
                _controlSlider.enabled = NO;
            }
        default:
            break;
    }
    
}

@end
