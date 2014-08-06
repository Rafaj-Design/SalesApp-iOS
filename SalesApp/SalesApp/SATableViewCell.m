//
//  SATableViewCell.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SATableViewCell.h"
#import "UIColor+Tools.h"


@implementation SATableViewCell


#pragma mark Layout

- (void)layoutElements {
    
}

#pragma mark Configuration

- (void)configureColors {
    [self setBackgroundColor:[UIColor colorWithHexString:@"1A1A1A"]];
    [self.textLabel setTextColor:[UIColor whiteColor]];
}

#pragma mark Creating elements

- (void)createAllElements {
    
}

#pragma mark Initialization

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createAllElements];
        [self configureColors];
        [self layoutElements];
    }
    return self;
}


@end
