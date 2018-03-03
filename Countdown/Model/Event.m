//
//  Event.m
//  Countdown
//
//  Created by Ahmed Khaled on 12/29/17.
//  Copyright © 2017 Ahmed Khaled. All rights reserved.
//

#import "Event.h"

@implementation Event
-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.date forKey:@"date"];

}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if(self) {
        _name = [aDecoder decodeObjectForKey:@"name"];
        _date = [aDecoder decodeObjectForKey:@"date"];
    }
    return self;
}
@end
