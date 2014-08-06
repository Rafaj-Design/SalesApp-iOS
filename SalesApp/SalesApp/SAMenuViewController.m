//
//  SAMenuViewController.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAMenuViewController.h"
#import "SAMenuController.h"
#import "SAMenuView.h"
#import "UIColor+Tools.h"


@interface SAMenuViewController ()

@property (nonatomic, readonly) SAMenuController *menuController;

@end


@implementation SAMenuViewController


#pragma mark Configure colors

- (void)configureColors {
    [super configureColors];
    
    [self.view setBackgroundColor:[UIColor colorWithHexString:@"1A1A1A"]];
}

#pragma mark Creating elements

- (void)createMenuView {
    _menuController = [[SAMenuController alloc] init];
    
    CGRect r = self.view.bounds;
    r.origin.y = 20;
    r.size.height -= 20;
    _menuView = [[SAMenuView alloc] initWithFrame:r];
    [_menuView setController:_menuController];
    [self.view addSubview:_menuView];
    
    __weak typeof(self) weakSelf = self;
    [_menuController loadMenuItemsWithSuccessBlock:^(NSArray *menuItems) {
        [weakSelf.menuView reloadData];
    } andFailureBlock:^(SAError *error) {
        
    }];
}

- (void)createAllElements {
    [super createAllElements];
    
    [self createMenuView];
}


@end
