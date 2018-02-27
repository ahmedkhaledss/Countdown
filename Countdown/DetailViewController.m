//
//  DetailViewController.m
//  Countdown
//
//  Created by Ahmed Khaled on 12/27/17.
//  Copyright © 2017 Ahmed Khaled. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem name];
    }
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
