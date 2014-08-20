//
//  ViewController.m
//  ex_MagicalRecordSample
//
//  Created by 杉山 仁則 on 2014/08/15.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    User *user = [User MR_createEntity];
    [MagicalRecord saveWithBlock:^(NSManagedObjectContext *localContext){
        User *localUser = [user MR_inContext:localContext];
        localUser.name = [NSString stringWithFormat:@"%d", arc4random()];
        localUser.message = @"testtesttest";
        
    } completion:^(BOOL success, NSError *error) {
        
        NSArray *users = [User MR_findAll];
        
        for (int i = 0; i < users.count; i++) {
            User *user = users[i];
            NSLog(@"%@", user.name);
        }
        
    }];
    
    user.name = [NSString stringWithFormat:@"%d", arc4random()];
    user.message = @"test test test";
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    NSArray *users = [User MR_findAll];
    
    for (int i = 0; i < users.count; i++) {
        User *user = users[i];
        NSLog(@"%@", user.name);
    }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
