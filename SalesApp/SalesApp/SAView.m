//
//  SAView.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAView.h"


@implementation SAView


#pragma mark Layout elements

- (void)layoutElements {
    
}

#pragma mark Configuration

- (void)configureColors {
    
}

#pragma mark Creating elements

- (void)createAllElements {
    
}

#pragma mark Initialization

- (id)init {
    self = [super init];
    if (self) {
        [self createAllElements];
        [self configureColors];
        [self layoutElements];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self createAllElements];
        [self configureColors];
        [self layoutElements];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self createAllElements];
        [self configureColors];
        [self layoutElements];
    }
    return self;
}


@end
