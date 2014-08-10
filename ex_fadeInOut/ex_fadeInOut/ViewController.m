//
//  ViewController.m
//  ex_fadeInOut
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myPhoto;
- (IBAction)fadeInOut:(UIButton *)sender;

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

- (IBAction)fadeInOut:(UIButton *)sender {
    float newValue;
    
    if (self.myPhoto.alpha == 1.0) {
        newValue = 0.0;
    } else {
        newValue = 1.0;
    }
    
    [UIView animateWithDuration:1
                     animations:^{
                         NSLog(@" newValue: %f", newValue);
                         self.myPhoto.alpha = newValue;
                     }];
}
@end
