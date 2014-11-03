//
//  SingletonObject.m
//  Armycal2
//
//  Created by allenhsu on 2014/11/3.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingletonObject.h"

@implementation SingletonObject

//宣告一個靜態的SingletonObject物件
static SingletonObject *_singletonObject = nil;

- (id)init {
    self = [super init];
    if (self) {
        
        progress = 1;
    }
    
    return self;
}

//執行時會判斷是否_singletonObject已經完成記憶體配置
+ (SingletonObject *)sharedSingletonObject {
    
    @synchronized([SingletonObject class]) {
        
        //判斷_singletonObject是否完成記憶體配置
        if (!_singletonObject)
            [[self alloc] init];
        
        return _singletonObject;
    }
    
    return nil;
}

+ (id)alloc {
    @synchronized([SingletonObject class]) {
        
        //避免 [SingletonObject alloc] 方法被濫用
        NSAssert(_singletonObject == nil, @"_singletonObject 已經做過記憶體配置");
        _singletonObject = [super alloc];
        
        return _singletonObject;
    }
    
    return nil;
}

- (void)addDate:(int)date {
    progress = date;
}

- (int)showDate {
    NSLog(@"%d", progress);
    return progress;
}

- (void)dealloc {
    
    //[super dealloc];

}

@end
