//
//  SingletonObject.h
//  Armycal2
//
//  Created by allenhsu on 2014/11/3.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject {
@private
    int progress;
}

//統一透過此函式來調用SingletonObject的方法
+ (SingletonObject *)sharedSingletonObject;

//疊加
- (void)addDate :(int) date;

//呈現
- (int)showDate;
@end
