//
//  SAMasterViewController.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAMasterViewController.h"
#import "SAMenuView.h"
#import "FAKFontAwesome.h"


@interface SAMasterViewController ()

@end


@implementation SAMasterViewController


#pragma mark Configure colors

- (void)configureColors {
    [super configureColors];
    
    [self.view setBackgroundColor:[UIColor blackColor]];
}

#pragma mark Creating elements

- (void)createMenuViewController {
    _menuViewController = [[SAMenuViewController alloc] init];
    [self addChildViewController:_menuViewController];
}

- (void)createMenuButtons {
    FAKIcon *icon = [FAKFontAwesome barsIconWithSize:18];
    UIImage *img = [icon imageWithSize:CGSizeMake(18, 18)];
    UIBarButtonItem *menu = [[UIBarButtonItem alloc] initWithImage:img style:UIBarButtonItemStylePlain target:self action:@selector(didClickMenuButton:)];
    [_currentRootViewController.navigationItem setLeftBarButtonItem:menu];
}

- (void)createAllElements {
    [super createAllElements];
    
    [self createMenuViewController];
}

#pragma mark Navigation

- (void)showViewController:(UIViewController *)vc {
    if (_currentRootViewController) {
        [_currentRootViewController.view removeFromSuperview];
        _currentRootViewController = nil;
    }
    _currentRootViewController = vc;
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self createMenuButtons];
    [super addChildViewController:nc withFrame:vc.view.frame];
}

#pragma mark Animations

- (void)toggleMenu {
    [UIView animateWithDuration:0.15 delay:0.0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        UIView *v = _currentRootViewController.navigationController.view;
        [v setLeft:((v.left > 0) ? 0 : 270)];
    } completion:^(BOOL finished) {
        
    }];
}

#pragma mark Actions

- (void)didClickMenuButton:(id)sender {
    if (!_menuViewController.menuView.menuItemSelected) {
        [_menuViewController.menuView setMenuItemSelected:^(SAMenuItemModel *model) {
            [self toggleMenu];
        }];
    }
    
    [self toggleMenu];
}


@end
