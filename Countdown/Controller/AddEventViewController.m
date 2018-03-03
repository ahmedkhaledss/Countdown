//
//  AddEventViewController.m
//  Countdown
//
//  Created by Ahmed Khaled on 12/27/17.
//  Copyright © 2017 Ahmed Khaled. All rights reserved.
//

#import "AddEventViewController.h"



@interface AddEventViewController ()
@property (weak, nonatomic) IBOutlet UITextField *eventName;
@property (weak, nonatomic) IBOutlet UIDatePicker *day;
@property (weak, nonatomic) IBOutlet UIDatePicker *timeOfday;

@end

@implementation AddEventViewController
- (IBAction)returnToDetailViewController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)addEvent:(id)sender {
    
    Event *e = [[Event alloc] init];
    
    [e setName:[_eventName text]];
    
    //get the date from date picker and time picker
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *dayComponents = [[NSDateComponents alloc] init];
    dayComponents = [gregorianCalendar components:(NSCalendarUnit)(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:[_day date]];
    NSDateComponents *timeComponents = [[NSDateComponents alloc] init];
    timeComponents = [gregorianCalendar components:(NSCalendarUnit)(NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond) fromDate:[_timeOfday date]];
    NSDateComponents *combinedComponents = [[NSDateComponents alloc] init];
    [combinedComponents setYear:dayComponents.year];
    [combinedComponents setMonth:dayComponents.month];
    [combinedComponents setDay:dayComponents.day];
    [combinedComponents setHour:timeComponents.hour];
    [combinedComponents setMinute:timeComponents.minute];
    [combinedComponents setSecond:timeComponents.second];
    
    [e setDate:[gregorianCalendar dateFromComponents:combinedComponents]];
    
    [self.delegate insertEvent:self didFinishEnteringEvent:e];
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
