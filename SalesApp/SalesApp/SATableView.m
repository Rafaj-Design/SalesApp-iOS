//
//  SATableView.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "SATableView.h"


@interface SATableView ()

@property (nonatomic, readonly) NSMutableArray *heightCache;

@end


@implementation SATableView


#pragma mark Colors

- (void)configureColors {
    [super configureColors];
    [_tableView setBackgroundColor:[UIColor clearColor]];
}

#pragma mark Data management

- (void)setController:(id<SATableControllerProtocol>)controller {
    _controller = controller;
    [_tableView setDataSource:_controller];
    [_tableView reloadData];
}

- (void)reloadData {
    [_heightCache removeAllObjects];
    [_tableView reloadData];
}

#pragma mark Creating elements

- (void)createTableView {
    _heightCache = [NSMutableArray array];
    
    _tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    [_tableView setDelegate:self];
    [self addSubview:_tableView];
}

- (void)createAllElements {
    [super createAllElements];
    
    [self createTableView];
}

#pragma mark Table view delegate methods

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height = [_controller heightOfACellAtIndexPath:indexPath];
    return height;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
