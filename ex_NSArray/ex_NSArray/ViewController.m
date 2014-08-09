//
//  ViewController.m
//  ex_NSArray
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *fortuneList;
}
- (IBAction)choiceFortune:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *fortune;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    fortuneList = @[@"吉", @"吉", @"吉", @"大吉"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)choiceFortune:(UIButton *)sender {
    
    NSString *fortuneString = fortuneList[ arc4random() % fortuneList.count ];
    
    self.fortune.text = fortuneString;
}
@end
