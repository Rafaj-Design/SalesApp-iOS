//
//  UIView+Borders.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 22/07/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "UIView+Borders.h"


@implementation UIView (Borders)


#pragma mark Setting borders

- (void)addTopBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth {
    CALayer *border = [CALayer layer];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(0, 0, self.frame.size.width, borderWidth);
    [self.layer addSublayer:border];
}

- (void)addBottomBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth {
    CALayer *border = [CALayer layer];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(0, self.frame.size.height - borderWidth, self.frame.size.width, borderWidth);
    [self.layer addSublayer:border];
}

- (void)addLeftBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth {
    CALayer *border = [CALayer layer];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(0, 0, borderWidth, self.frame.size.height);
    [self.layer addSublayer:border];
}

- (void)addRightBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth {
    CALayer *border = [CALayer layer];
    border.backgroundColor = color.CGColor;
    border.frame = CGRectMake(self.frame.size.width - borderWidth, 0, borderWidth, self.frame.size.height);
    [self.layer addSublayer:border];
}


@end