//
//  SAMenuView.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAMenuView.h"
#import "UIColor+Tools.h"


@implementation SAMenuView


#pragma mark Layout elements

- (void)layoutElements {
    [super layoutElements];
}

#pragma mark Configuration

- (void)configureColors {
    [super configureColors];
}

#pragma mark Table view delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (_menuItemSelected) {
        _menuItemSelected([self.controller itemAtIndexPath:indexPath]);
    }
}


@end
