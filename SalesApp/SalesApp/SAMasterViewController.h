//
//  SAMasterViewController.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAViewController.h"


@interface SAMasterViewController : SAViewController

@property (nonatomic, readonly) UIViewController *currentRootViewController;

- (void)showViewController:(SAViewController *)vc;


@end
