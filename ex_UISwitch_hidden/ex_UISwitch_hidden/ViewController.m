//
//  ViewController.m
//  ex_UISwitch_hidden
//
//  Created by 杉山 仁則 on 2014/08/10.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//01
@property (weak, nonatomic) IBOutlet UISwitch *myLeftSwitch;
@property (weak, nonatomic) IBOutlet UIImageView *myPhoto;
- (IBAction)showHidePhoto:(UISwitch *)sender;

//02
- (IBAction)changeColor:(UISwitch *)sender;

//03
- (IBAction)selectColor:(UISegmentedControl *)sender;

//04
@property (weak, nonatomic) IBOutlet UIImageView *kurara;
- (IBAction)changedValue:(UISlider *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = [UIColor redColor];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showHidePhoto:(UISwitch *)sender {
    
    self.myPhoto.hidden = ! self.myLeftSwitch.on;
}

- (IBAction)changeColor:(UISwitch *)sender {
    
    if (sender.on) {
        self.view.backgroundColor = [UIColor redColor];
    } else {
        self.view.backgroundColor = [UIColor lightGrayColor];
    }
}
- (IBAction)selectColor:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor redColor];
            
        default:
            break;
    }
}
- (IBAction)changedValue:(UISlider *)sender {
    
    self.kurara.alpha = sender.value;
}
@end
