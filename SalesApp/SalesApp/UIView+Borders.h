//
//  UIView+Borders.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 22/07/2014.
//  Copyright (c)2014 Ridiculous Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (Borders)

- (void)addBottomBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth;
- (void)addLeftBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth;
- (void)addRightBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth;
- (void)addTopBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth;


@end
