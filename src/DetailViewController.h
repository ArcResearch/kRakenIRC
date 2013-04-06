//
//  DetailViewController.h
//  kRakenIRC
//
//  Created by Arcterus on 4/5/13.
//  Copyright (c) 2013 kRaken Research. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
