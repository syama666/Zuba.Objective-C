//
//  ViewController.m
//  ex_tapGesture_animation
//
//  Created by 杉山 仁則 on 2014/08/11.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *kawano;
- (IBAction)tapView:(UITapGestureRecognizer *)sender;

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

- (IBAction)tapView:(UITapGestureRecognizer *)sender {
    
    CGPoint tapLoc = [sender locationInView:self.view];
    
    UIViewAnimationOptions animeOptions = UIViewAnimationOptionCurveEaseInOut
    | UIViewAnimationOptionBeginFromCurrentState;
    
    [UIView animateWithDuration:2.0
                          delay:0
                        options:animeOptions
                     animations:^{
                         self.kawano.center = tapLoc;
                     }
                     completion:nil];
}
@end
