//
//  ViewController.m
//  ex_animationimage
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *animationSeq;
}
@property (weak, nonatomic) IBOutlet UIImageView *kuwano;
- (IBAction)tapKuwano:(UITapGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    animationSeq = @[[UIImage imageNamed:@"IMG_3691.jpg"],
                     [UIImage imageNamed:@"IMG_3692.jpg"],
                     [UIImage imageNamed:@"IMG_3693.jpg"],
                     [UIImage imageNamed:@"IMG_3694.jpg"],
                     [UIImage imageNamed:@"IMG_3695.jpg"],
                     [UIImage imageNamed:@"IMG_3696.jpg"]
                     ];
    
    self.kuwano.animationImages = animationSeq;
    self.kuwano.animationDuration = 0.5;
    self.kuwano.animationRepeatCount = 3;
    //self.kuwano.ani
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapKuwano:(UITapGestureRecognizer *)sender {

    if (self.kuwano.isAnimating) {
        [self.kuwano stopAnimating];
    } else {
        [self.kuwano startAnimating];
    }

}
@end
