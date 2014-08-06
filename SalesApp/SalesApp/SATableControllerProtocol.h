//
//  TOTableControllerProtocol.h
//  MobileApp
//
//  Created by Ondrej Rafaj on 15/07/2014.
//  Copyright (c) 2014 T101 Limited. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void (^SATableControllerProtocolViewNeedsReloading)(NSArray *sections);


@protocol SATableControllerProtocol <UITableViewDataSource>

@required
- (CGFloat)heightOfACellAtIndexPath:(NSIndexPath *)indexPath;
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;



@end
