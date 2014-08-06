//
//  SALang.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 06/08/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import <Foundation/Foundation.h>


#define SALangGet(key)                  [SALang get:key]


@interface SALang : NSObject

+ (NSString *)get:(NSString *)key;


@end
