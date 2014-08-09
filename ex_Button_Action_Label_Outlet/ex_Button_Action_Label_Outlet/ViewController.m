//
//  ViewController.m
//  ex_Button_Action_Label_Outlet
//
//  Created by 杉山 仁則 on 2014/08/09.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)sayHello:(UIButton *)sender;

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

- (IBAction)sayHello:(UIButton *)sender {
    self.myLabel.text = @"Hello!";
}
@end
