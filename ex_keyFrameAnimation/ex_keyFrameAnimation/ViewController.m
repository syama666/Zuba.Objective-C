//
//  ViewController.m
//  ex_keyFrameAnimation
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;
- (IBAction)playAnimation:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playAnimation:(UIButton *)sender {
    
    [UIView animateKeyframesWithDuration:2.0
                                   delay:0.0
                                 options:UIViewKeyframeAnimationOptionCalculationModeCubic
                              animations:^{
                              
                                  [UIView addKeyframeWithRelativeStartTime:0.2
                                                          relativeDuration:0.6
                                                                animations:^{
                                                                    self.myButton.center = CGPointMake(160, 150);
                                                                }
                                   ];
                                  
                                  [UIView addKeyframeWithRelativeStartTime:0.5
                                                          relativeDuration:0.5
                                                                animations:^{
                                                                    self.myButton.backgroundColor = [UIColor redColor];
                                                                }];
                              
                              }
                              completion:nil];
}
@end
