//
//  ViewController.m
//  ex_dragGesture
//
//  Created by 杉山 仁則 on 2014/08/11.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *kawano;
- (IBAction)dragKawano:(UIPanGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *kuwano;

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

- (IBAction)dragKawano:(UIPanGestureRecognizer *)sender {
    
    
    CGPoint translation = [sender translationInView:self.view];

    NSLog(@"trans x: %f", translation.x);
    NSLog(@"trans y: %f", translation.y);

    CGPoint homeLoc = self.kawano.center;

    if (CGRectIntersectsRect(self.kuwano.frame, self.kawano.frame)) {
        NSLog(@"当たってるよおおおおおおお");
        homeLoc.x -= (translation.x*1.2);
        homeLoc.y -= (translation.y*1.2);
        self.kawano.center = homeLoc;
        [sender setTranslation:CGPointZero inView:self.view];
        return;
    }
    
    
    homeLoc.x += translation.x;
    homeLoc.y += translation.y;
    
    self.kawano.center = homeLoc;
    
    NSLog(@"x: %f", homeLoc.x);
    NSLog(@"y: %f", homeLoc.y);
    
    [sender setTranslation:CGPointZero inView:self.view];
}
@end
