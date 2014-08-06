//
//  SAMenuItemModel.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAMenuItemModel.h"
#import "SALang.h"
#import "FAKIcon.h"


@implementation SAMenuItemModel


#pragma mark Initialization

+ (SAMenuItemModel *)menuItemForTitle:(NSString *)title withIcon:(FAKIcon *)icon andTargetControllerClass:(Class)controllerClass {
    SAMenuItemModel *menuItem = [[SAMenuItemModel alloc] initWithTitle:title withIcon:icon andTargetControllerClass:controllerClass];
    return menuItem;
}

- (id)initWithTitle:(NSString *)title withIcon:(FAKIcon *)icon andTargetControllerClass:(Class)controllerClass {
    self = [super init];
    if (self) {
        _title = SALangGet(title);
        [icon addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor]];
        _icon = icon;
        _controllerClass = controllerClass;
    }
    return self;
}


@end
