//
//  PassValueDelegate.h
//  Armycal2
//
//  Created by allenhsu on 2014/11/1.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol PassValueDelegate <NSObject>
 -(void)setValue:(NSDictionary *)dictionary;

@end

@interface PassValueDelegate : NSObject
@end

