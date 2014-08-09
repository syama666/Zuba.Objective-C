//
//  ViewController.m
//  ex_UIDatePicker
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

NSString *dateFormatString = @"yyyy/MM/dd";

@interface ViewController () {
    NSDateFormatter *formatter;
}
@property (weak, nonatomic) IBOutlet UILabel *toDay;
@property (weak, nonatomic) IBOutlet UILabel *selectedDate;
@property (weak, nonatomic) IBOutlet UILabel *days;
- (IBAction)changedDate:(UIDatePicker *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:dateFormatString];
    
    self.toDay.text = [formatter stringFromDate: [NSDate date]];
    self.selectedDate.text = [formatter stringFromDate: [NSDate date]];
    
    self.days.text = @"0";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changedDate:(UIDatePicker *)sender {
    
    self.selectedDate.text = [formatter stringFromDate:sender.date];
    
    NSDate *sinceDate = [formatter dateFromString:self.toDay.text];
    
    NSTimeInterval secs = [sender.date timeIntervalSinceDate:sinceDate];
    
    NSInteger numDays = round(secs/(60*60*24));
    
    self.days.text = [NSString stringWithFormat:@"%d", numDays];
    
    
}
@end
