//
//  SAError.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SAError : NSObject

@property (nonatomic, readonly) NSInteger errorCode;
@property (nonatomic, readonly) NSString *localizedTitle;
@property (nonatomic, readonly) NSString *localizedDescription;


@end
