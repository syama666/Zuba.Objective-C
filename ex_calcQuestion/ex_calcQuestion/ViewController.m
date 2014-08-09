//
//  ViewController.m
//  ex_calcQuestion
//
//  Created by 杉山 仁則 on 2014/08/09.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLeftLabel;
@property (weak, nonatomic) IBOutlet UILabel *myRightLabel;
@property (weak, nonatomic) IBOutlet UILabel *myAnser;
- (IBAction)makeExamination:(UIButton *)sender;
- (IBAction)calc:(id)sender;

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

- (IBAction)makeExamination:(UIButton *)sender {
    
    
    self.myLeftLabel.text = [NSString stringWithFormat:@"%d", arc4random() % 10];
    self.myRightLabel.text = [NSString stringWithFormat:@"%d", arc4random() % 20 + 1];


}

- (IBAction)calc:(id)sender {
    
    int left = [self.myLeftLabel.text intValue];
    int right = [self.myRightLabel.text intValue];
    
    int anser = left + right;
    
    self.myAnser.text = [NSString stringWithFormat:@"%d", anser];		
}
@end
