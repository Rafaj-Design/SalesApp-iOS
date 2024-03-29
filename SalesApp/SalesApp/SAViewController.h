//
//  SAViewController.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "UIView+Layout.h"
#import "UIView+AutoLayout.h"
#import "SALang.h"


@interface SAViewController : UIViewController

- (void)createAllElements;
- (void)configureColors;
- (void)layoutElements;

- (void)addChildViewController:(UIViewController *)childController withFrame:(CGRect)frame;


@end
