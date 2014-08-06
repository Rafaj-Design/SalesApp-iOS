//
//  UIView+Layout.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 03/03/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "UIView+Layout.h"

@implementation UIView (Layout)

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top {
    self.frame = CGRectMake(self.frame.origin.x, top, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)bottom {
    return CGRectGetMaxY(self.frame);
}

- (void)setBottom:(CGFloat)bottom {
    self.frame = CGRectMake(self.frame.origin.x, bottom - self.frame.size.height, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)left {
    self.frame = CGRectMake(left, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)right {
    return CGRectGetMaxX(self.frame);
}

- (void)setRight:(CGFloat)right {
    self.frame = CGRectMake(right - self.frame.size.width, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width, size.height);
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    self.frame = CGRectMake(origin.x, origin.y, self.frame.size.width, self.frame.size.height);
}

- (void)centerInSuperView {
    double xPos = round((self.superview.width - self.width) / 2);
    double yPos = round((self.superview.height - self.height) / 2);
    self.origin = CGPointMake(xPos, yPos);
}

- (void)centerHorizontallyInSuperView {
    double xPos = round((self.superview.width - self.width) / 2);
    self.origin = CGPointMake(xPos, self.top);
}

- (void)centerVerticallyInSuperView {
    double yPos = round((self.superview.height - self.height) / 2);
    self.origin = CGPointMake(self.left, yPos);
}

- (void)verticallyAlignToView:(UIView *)aView {
    self.center = CGPointMake(self.center.x, aView.center.y);
}

- (void)horizontallyAlignToView:(UIView *)aView {
    self.center = CGPointMake(aView.center.x, self.center.y);
}

- (void)bringToFront {
    [self.superview bringSubviewToFront:self];
}

- (void)sendToBack {
    [self.superview sendSubviewToBack:self];
}

- (CGFloat)bottomMargin
{
	if (self.superview) {
		return self.superview.height - self.bottom;
	}
	return 0;
}

- (void)setBottomMargin:(CGFloat)bottomMargin
{
	if (self.superview) {
		CGRect frame = self.frame;
		frame.origin.y = self.superview.height - bottomMargin - self.height;
		self.frame = frame;
	}
}

- (CGFloat)rightMargin
{
	if (self.superview) {
		return self.superview.width - self.right;
	}
	return 0;
}

- (void)setRightMargin:(CGFloat)rightMargin
{
	if (self.superview) {
		CGRect frame = self.frame;
		frame.origin.x = self.superview.width - rightMargin - self.width;
		self.frame = frame;
	}
}

- (void)setAutoresizingNone {
	[self setAutoresizingMask:UIViewAutoresizingNone];
}

- (void)setAutoresizingBottomLeft {
	[self setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin];
}

- (void)setAutoresizingBottomRight {
	[self setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin];
}

- (void)setAutoresizingTopLeft {
	[self setAutoresizingMask:UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin];
}

- (void)setAutoresizingTopRight {
	[self setAutoresizingMask:UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin];
}

- (void)setAutoresizingTopCenter {
	[self setAutoresizingMask:UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin];
}

- (void)setAutoresizingCenter {
	[self setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin];
}

- (void)setAutoresizingBottomCenter {
	[self setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin];
}

- (void)setAutoresizingWidthAndHeight {
	[self setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
}


- (void)show {
    self.alpha = 1.0;
}

- (void)hide {
    self.alpha = 0.0;
}

- (void)animateAlpha:(CGFloat)alpha withDelay:(CGFloat)delay {
    [UIView animateKeyframesWithDuration:0.3 delay:delay options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        self.alpha = alpha;
    } completion:nil];
}

- (void)showAnimatedWithDelay:(CGFloat) delay {
    [UIView animateWithDuration:0.3 delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [self show];
    } completion:nil];
}

- (void)hideAnimatedWithDelay:(CGFloat) delay {
    [UIView animateWithDuration:0.3 delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [self hide];
    } completion:nil];
}

- (void)showAnimated {
    [self showAnimatedWithDelay:0];
}

- (void)hideAnimated {
    [self hideAnimatedWithDelay:0];
}

- (void)darken {
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.1];
    
    for(UIView *view in self.subviews) {
        [view darken];
    }
}

- (void)setBorderWidth:(CGFloat)width color:(UIColor *)aColor {
    self.layer.borderColor = aColor.CGColor;
    self.layer.borderWidth = width;
}

- (void)addMultipleSubviews:(NSArray *)subviews {
    for(UIView *view in subviews) {
        [self addSubview:view];
    }
}

- (void)bringSubviewsToFront:(NSArray *)subviews {
    for(UIView *view in subviews) {
        [view bringToFront];
    }
}

- (void)offsetAllSubview:(CGFloat)offset {
    for(UIView *view in self.subviews) {
        view.top += offset;
    }
}

@end
