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

- (double)timecalculater:(NSDate*) BeginDate and:(NSDate*)FinishDate{
    
    
    
    NSDateFormatter *df = [NSDateFormatter new];
    
    [df setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    

   NSString *TodayString = [df stringFromDate:[NSDate date]];

    
    NSTimeInterval Time = [FinishDate timeIntervalSinceDate:BeginDate];

    
    NSTimeInterval time = [FinishDate timeIntervalSinceDate:[df dateFromString:TodayString]];
    
    
    return 1-time/Time;
}

@end