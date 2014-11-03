//
//  ViewController.h
//  Armycal2
//
//  Created by allenhsu on 2014/10/13.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"

@interface ViewController : UIViewController  <PassValueDelegate>

- (void) labelupdater;


@property NSDate *DefaultDate1;
@property NSDate *DefaultDate2;


@end

