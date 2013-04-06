//
//  MasterViewController.h
//  kRakenIRC
//
//  Created by Arcterus on 4/5/13.
//  Copyright (c) 2013 kRaken Research. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
