//
//  SecViewController.m
//  Armycal2
//
//  Created by allenhsu on 2014/10/27.
//  Copyright (c) 2014年 Asurada. All rights reserved.
//

#import "SecViewController.h"
#import "ViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)DateChanged:(id)sender {
    

    NSDictionary *dictionary=[NSDictionary  dictionaryWithObjectsAndKeys:self.DatePicker1.date,@"datepick1",self.DatePicker2.date,@"datepick2", nil];
    
    [self.delegate setValue:dictionary];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
