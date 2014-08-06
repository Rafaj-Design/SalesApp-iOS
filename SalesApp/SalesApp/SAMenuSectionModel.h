//
//  SAMenuSectionModel.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SAMenuSectionModel : NSObject

@property (nonatomic, strong) NSString *localizedTitle;
@property (nonatomic, strong) NSMutableArray *menuItems;

+ (SAMenuSectionModel *)sectionWithTitle:(NSString *)title;


@end
