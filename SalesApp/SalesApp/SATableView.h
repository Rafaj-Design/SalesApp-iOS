//
//  SATableView.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAView.h"
#import "SATableControllerProtocol.h"


@interface SATableView : SAView <UITableViewDelegate>

@property (nonatomic, readonly) UITableView *tableView;
@property (nonatomic) id<SATableControllerProtocol> controller;

- (void)reloadData;


@end
