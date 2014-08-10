//
//  ViewController.m
//  ex_animateClockLabel
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

//const CGPoint RIGHT = CGPointMake(-160, 150), CENTER = CGPointMake(480, 150)

const CGPoint RIGHT = {-160, 150}, CENETR = {480, 150}, LEFT = {160, 150};

@interface ViewController ()
{
    NSTimer *_animateTimer, *_clockTimer;
}
@property (weak, nonatomic) IBOutlet UILabel *clockLabel;

- (void)flyingAnimation;
- (void)updateClock;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewDidAppear:(BOOL)animated
{
    //NSLog(@"%f %f", RIGHT.x, RIGHT.y);
    self.clockLabel.center = CENETR;
    
    _animateTimer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(flyingAnimation) userInfo:nil repeats:YES];
    
    _clockTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateClock) userInfo:nil repeats:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)flyingAnimation
{
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         
                         self.clockLabel.center = LEFT;
                         
                     }
                     completion:^(BOOL finished){
                         
                         
                         [UIView animateWithDuration:0.5
                                               delay:3.0
                                             options:UIViewAnimationOptionCurveEaseIn
                                          animations:^{
                                              
                                              self.clockLabel.center = RIGHT;
                                              
                                          }
                                          completion:^(BOOL finished){
                                              
                                              self.clockLabel.center = CENETR;
                                              
                                          }];
                         
                         
                     }];
}

- (void)updateClock
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    
    self.clockLabel.text = [formatter stringFromDate:[NSDate date]];
}

@end
