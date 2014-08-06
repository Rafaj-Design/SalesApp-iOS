//
//  SAViewController.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAViewController.h"


@interface SAViewController ()

@end


@implementation SAViewController


#pragma mark Layout

- (void)layoutElements {
    
}

#pragma mark Configure colors

- (void)configureColors {
    
}

#pragma mark Creating elements

- (void)createAllElements {
    
}

#pragma mark View lifecycle

- (void)loadView {
    [super loadView];
    
    [self createAllElements];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self layoutElements];
    [self configureColors];
}

#pragma mark Navigation

- (void)addChildViewController:(UIViewController *)childController withFrame:(CGRect)frame {
    [super addChildViewController:childController];
    
    [childController.view setFrame:frame];
    [self.view addSubview:childController.view];
    [childController didMoveToParentViewController:self];
}

- (void)addChildViewController:(UIViewController *)childController {
    [self addChildViewController:childController withFrame:self.view.bounds];
}


@end
