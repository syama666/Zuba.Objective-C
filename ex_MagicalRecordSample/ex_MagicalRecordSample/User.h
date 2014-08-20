//
//  User.h
//  ex_MagicalRecordSample
//
//  Created by 杉山 仁則 on 2014/08/15.
//  Copyright (c) 2014年 杉山 仁則. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface User : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * message;

@end
