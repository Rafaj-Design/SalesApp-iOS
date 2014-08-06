//
//  SAMenuController.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SATableControllerProtocol.h"


@class SAError;

@interface SAMenuController : NSObject <SATableControllerProtocol>

- (void)loadMenuItemsWithSuccessBlock:(void (^)(NSArray *menuItems))success andFailureBlock:(void (^)(SAError *error))failure;


@end
