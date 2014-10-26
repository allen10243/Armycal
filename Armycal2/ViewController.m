//
//  ViewController.m
//  Armycal2
//
//  Created by allenhsu on 2014/10/13.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//

#import "ViewController.h"
#import "Timehandler.h"


@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self labelupdater];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) labelupdater{

    Timehandler *Time_object = [[Timehandler alloc] init];
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setUsesSignificantDigits: YES];
    numberFormatter.maximumSignificantDigits = 100;
    [numberFormatter setGroupingSeparator:@""];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber *n1 = [NSNumber numberWithDouble:[Time_object timecalculater]*100];
    self.label.text = [numberFormatter stringFromNumber:n1];
    
    [self.view setNeedsDisplay];
    [self performSelector:@selector(labelupdater) withObject:self afterDelay:0.5];
    


}


@end
