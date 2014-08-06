//
//  SATabletMasterViewController.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SATabletMasterViewController.h"
#import "SAMapViewController.h"


@interface SATabletMasterViewController ()

@end


@implementation SATabletMasterViewController


#pragma mark Layout

- (void)layoutElements {
    [super layoutElements];
    
    CGRect r = self.view.bounds;
    r.size.width = 320;
    [self.menuViewController.view setFrame:r];
}

#pragma mark Configure colors

- (void)configureColors {
    [super configureColors];
}

#pragma mark Creating elements

- (void)createAllElements {
    [super createAllElements];
    
    SAMapViewController *c = [[SAMapViewController alloc] init];
    [self showViewController:c];
}

#pragma mark Navigation

- (void)showViewController:(UIViewController *)vc {
    CGRect r = self.view.bounds;
    [vc.view setFrame:r];
    [super showViewController:vc];
}

#pragma mark Actions

- (void)didClickMenuButton:(id)sender {
    [super didClickMenuButton:sender];
}


@end
