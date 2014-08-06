//
//  SAMenuItemModel.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import <Foundation/Foundation.h>


@class FAKIcon;

@interface SAMenuItemModel : NSObject

@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) FAKIcon *icon;
@property (nonatomic, readonly) Class controllerClass;

@property (nonatomic) NSInteger displayType;

+ (SAMenuItemModel *)menuItemForTitle:(NSString *)title withIcon:(FAKIcon *)icon andTargetControllerClass:(Class)controllerClass;

- (id)initWithTitle:(NSString *)title withIcon:(FAKIcon *)icon andTargetControllerClass:(Class)controllerClass;


@end
