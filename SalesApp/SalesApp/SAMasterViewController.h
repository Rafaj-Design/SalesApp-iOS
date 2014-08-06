//
//  SAMasterViewController.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAMenuViewController.h"


@interface SAMasterViewController : SAViewController

@property (nonatomic, readonly) SAMenuViewController *menuViewController;
@property (nonatomic, readonly) UIViewController *currentRootViewController;
@property (nonatomic, readonly) UIView *shadowView;

- (void)showViewController:(UIViewController *)vc;
- (void)didClickMenuButton:(id)sender;


@end
