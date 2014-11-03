//
//  ViewController.m
//  Armycal2
//
//  Created by allenhsu on 2014/10/13.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//

#import "ViewController.h"
#import "Timehandler.h"
#import "SecViewController.h"
#import "SingletonObject.h"


@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    //////////////////////////////////////////
//    NSString *BeginDateString = @"2014-07-25 00:00:00";
//    NSString *FinishDateString = @"2015-06-25 00:00:00";
//    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
//    [dateFormater setDateFormat:@"yyyy-MM-DD HH:mm:ss"];
//    self.DefaultDate1 = [dateFormater dateFromString:BeginDateString];
//    self.DefaultDate2 = [dateFormater dateFromString:FinishDateString];
//    
   // NSLog(@"INIT!!!!!");

    [self labelupdater];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setValue:(NSDictionary *)dictionary{
    
    self.DefaultDate1 = [dictionary objectForKey:@"datepick1"];
    self.DefaultDate2 = [dictionary objectForKey:@"datepick2"];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        UIViewController *viewController=segue.destinationViewController;
        SecViewController *secViewController=(SecViewController *)viewController;
        secViewController.DatePicker1.date=self.DefaultDate1;
        secViewController.DatePicker2.date=self.DefaultDate2;
       // delegate赋值
        secViewController.delegate=self;
    
}

- (void) labelupdater{

    
    Timehandler *Time_object = [[Timehandler alloc] init];
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setUsesSignificantDigits: YES];
    numberFormatter.maximumSignificantDigits = 100;
    [numberFormatter setGroupingSeparator:@""];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    
    
    
    NSNumber *n1 = [NSNumber numberWithDouble:[Time_object timecalculater:self.DefaultDate1 and
                                                                         :self.DefaultDate2]*100];
    
    if(self.DefaultDate1 == Nil)
    {
        NSString *BeginDateString = @"2014-07-25 00:00:00";
        NSString *FinishDateString = @"2015-06-25 00:00:00";
        NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
        [dateFormater setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
        self.DefaultDate1 = [dateFormater dateFromString:BeginDateString];
        self.DefaultDate2 = [dateFormater dateFromString:FinishDateString];
        n1 = [NSNumber numberWithDouble:[Time_object timecalculater:self.DefaultDate1 and
                                                                        :self.DefaultDate2]*100];
    }
    
    

    
    self.label.text = [numberFormatter stringFromNumber:n1];
    NSDateFormatter *df = [NSDateFormatter new];
    
    [df setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    [[SingletonObject sharedSingletonObject] addDate:n1.intValue];

    
    [self performSelector:@selector(labelupdater) withObject:self afterDelay:0.1];
    


}




@end
