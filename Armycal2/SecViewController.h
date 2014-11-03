//
//  SecViewController.h
//  Armycal2
//
//  Created by allenhsu on 2014/10/27.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"


@interface SecViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *DatePicker1;
@property (strong, nonatomic) IBOutlet UIDatePicker *DatePicker2;

@property NSObject<PassValueDelegate> *delegate;

@end
