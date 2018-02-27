//
//  MasterViewController.h
//  Countdown
//
//  Created by Ahmed Khaled on 12/27/17.
//  Copyright © 2017 Ahmed Khaled. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"
#import "AddEventViewController.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <AddEventViewControllerProtocol>
@property (strong, nonatomic) NSMutableArray *events;
@property (strong, nonatomic) DetailViewController *detailViewController;


@end

