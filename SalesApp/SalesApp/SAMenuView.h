//
//  SAMenuView.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SATableView.h"


@class SAMenuItemModel;

@interface SAMenuView : SATableView

@property (nonatomic, copy) void (^menuItemSelected)(SAMenuItemModel *model);


@end
