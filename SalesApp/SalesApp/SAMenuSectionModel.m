//
//  SAMenuSectionModel.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAMenuSectionModel.h"
#import "SALang.h"


@implementation SAMenuSectionModel


#pragma mark Initialization

+ (SAMenuSectionModel *)sectionWithTitle:(NSString *)title {
    SAMenuSectionModel *section = [[SAMenuSectionModel alloc] init];
    [section setLocalizedTitle:SALangGet(title)];
    return section;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _menuItems = [NSMutableArray array];
    }
    return self;
}

@end
