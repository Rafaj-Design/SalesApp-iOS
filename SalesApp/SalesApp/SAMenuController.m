//
//  SAMenuController.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SAMenuController.h"
#import "SAMenuTableViewCell.h"
#import "SAMenuSectionModel.h"
#import "SAMenuItemModel.h"
#import "FAKFontAwesome.h"


#define kSAMenuControllerIconSize                       12


@interface SAMenuController ()

@property (nonatomic, readonly) NSArray *data;

@end


@implementation SAMenuController


#pragma mark Creating menu items

- (void)loadMenuItemsWithSuccessBlock:(void (^)(NSArray *menuItems))success andFailureBlock:(void (^)(SAError *error))failure {
    NSMutableArray *menu = [NSMutableArray array];
    
    SAMenuSectionModel *section = [SAMenuSectionModel sectionWithTitle:@"Search"];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"My Favorites" withIcon:[FAKFontAwesome heartIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"For Sale" withIcon:[FAKFontAwesome homeIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"For Rent" withIcon:[FAKFontAwesome buildingIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [menu addObject:section];
    
    section = [SAMenuSectionModel sectionWithTitle:@"About"];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"About Us" withIcon:[FAKFontAwesome usersIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"Our Website" withIcon:[FAKFontAwesome globeIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [menu addObject:section];
    
    section = [SAMenuSectionModel sectionWithTitle:@"More"];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"Leave Feedback" withIcon:[FAKFontAwesome envelopeIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"Rate this App" withIcon:[FAKFontAwesome thumbsUpIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"Share this App" withIcon:[FAKFontAwesome shareAltIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [section.menuItems addObject:[SAMenuItemModel menuItemForTitle:@"Settings" withIcon:[FAKFontAwesome cogsIconWithSize:kSAMenuControllerIconSize] andTargetControllerClass:nil]];
    [menu addObject:section];
    
    _data = menu;
    
    if (success) {
        success([menu copy]);
    }
}

#pragma mark Protocol methods

- (CGFloat)heightOfACellAtIndexPath:(NSIndexPath *)indexPath {
    return 52;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return [(SAMenuSectionModel *)_data[indexPath.section] menuItems][indexPath.row];
}

#pragma mark Table view data source methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[(SAMenuSectionModel *)_data[section] menuItems] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [(SAMenuSectionModel *)_data[section] localizedTitle];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"mi";
    SAMenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[SAMenuTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    SAMenuItemModel *item = [self itemAtIndexPath:indexPath];
    [cell.textLabel setText:item.title];
    [cell.imageView setImage:[item.icon imageWithSize:CGSizeMake(16, 16)]];
    return cell;
}


@end
