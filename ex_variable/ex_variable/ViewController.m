//
//  ViewController.m
//  ex_variable
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int a, b;
}
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *ansLabel;
- (IBAction)makeExam:(UIButton *)sender;
- (IBAction)calc:(UIButton *)sender;

-(void)examin;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self examin];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeExam:(UIButton *)sender {
    [self examin];
    //self.examin;
}

- (IBAction)calc:(UIButton *)sender {
    
    self.ansLabel.text = [NSString stringWithFormat:@"%d", a + b];
}

- (void)examin
{
    a = arc4random()%10 + 5;
    b = arc4random()%10 + 10;
    
    NSString *question = [NSString stringWithFormat:@"%d + %d = ", a, b];
    
    self.questionLabel.text = question;
    
    self.ansLabel.text = @"?";
}
@end
