//
//  DetailViewController.m
//  Countdown
//
//  Created by Ahmed Khaled on 12/27/17.
//  Copyright © 2017 Ahmed Khaled. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *countdownLabel;

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem name];
        [self startCountdown];
    }
}


- (void)startCountdown {
    NSTimer *timer;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
}

- (void)updateTime {
    int ti = (int)([self.detailItem.date timeIntervalSinceNow]);
    int seconds = ti % 60;
    int minutes = (ti / 60) % 60;
    int hours = (ti / 3600) % 24;
    int days = (ti / 86400);
    self.countdownLabel.text = [NSString stringWithFormat:@"%i days %i hours %i min %i sec", days, hours, minutes, seconds];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(Event *)newEvent{
    if (_detailItem != newEvent) {
        _detailItem = newEvent;
        
        // Update the view.
        [self configureView];
    }
}


@end
