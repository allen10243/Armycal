//
//  Timehandler.m
//  Armycal2
//
//  Created by allenhsu on 2014/10/13.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//
#import "Timehandler.h"

@implementation Timehandler
- (Timehandler *) init{
    
    self = [super init];
    
    return self;
    
}

- (double)timecalculater{
    
    NSDateFormatter *df = [NSDateFormatter new];
    
    [df setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    
    NSString *TargetDateString = @"2015-06-25 00:00:00";
    NSString *TodayString = [df stringFromDate:[NSDate date]];
    
    NSTimeInterval Time = [[df dateFromString:@"2015-06-25 00:00:00"] timeIntervalSinceDate:[df dateFromString:@"2014-07-25 00:00:00"]];
//     NSTimeInterval Time = [[df dateFromString:@"2015-06-02 00:00:00"] timeIntervalSinceDate:[df dateFromString:@"2014-05-19 00:00:00"]];
    NSTimeInterval time = [[df dateFromString:TargetDateString] timeIntervalSinceDate:[df dateFromString:TodayString]];
    
    
    NSLog(@"a%f", 1-time/Time);
    NSLog(@"12324");
    
    return 1-time/Time;
}

@end