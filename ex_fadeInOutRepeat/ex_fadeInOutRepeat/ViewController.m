//
//  ViewController.m
//  ex_fadeInOutRepeat
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    UIViewAnimationOptions animationOptions =
        UIViewAnimationOptionCurveEaseInOut
        | UIViewAnimationOptionAutoreverse
        | UIViewAnimationOptionRepeat;
    
   
    CGFloat cx = self.myLabel.center.x;
    CGFloat cy = self.myLabel.center.y;
    CGPoint pt = CGPointMake(cx, cy - 100);
    
    [UIView animateWithDuration:1.5
                        delay:1
                        options:animationOptions
                        animations:^{
                            self.myLabel.center = pt;
                            self.myLabel.alpha = 0.2;
                        }
                        completion:nil];
     
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
