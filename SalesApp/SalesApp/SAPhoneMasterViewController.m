//
//  SAPhoneMasterViewController.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAPhoneMasterViewController.h"
#import "SAMapViewController.h"


@interface SAPhoneMasterViewController ()

@end


@implementation SAPhoneMasterViewController


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
    [vc.view setFrame:self.view.frame];
    
    [super showViewController:vc];
}

#pragma mark Actions

- (void)didClickMenuButton:(id)sender {
    [super didClickMenuButton:sender];
}


@end
