//
//  Event.h
//  Countdown
//
//  Created by Ahmed Khaled on 12/29/17.
//  Copyright © 2017 Ahmed Khaled. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject <NSCoding>

@property NSDate *date;
@property NSString *name;

@end
