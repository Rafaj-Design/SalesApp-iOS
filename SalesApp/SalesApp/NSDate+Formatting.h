//
//  NSDate+Formatting.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 18/07/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (Formatting)

+ (NSString *)mysqlDatetimeFormattedAsTimeAgo:(NSString *)mysqlDatetime;
- (NSString *)formattedAsTimeAgo;


@end
