//
//  UIView+Layout.h
//  SalesApp
//
//  Created by Ondrej Rafaj on 03/03/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (Layout)

@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat right;

@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

@property (nonatomic) CGSize size;
@property (nonatomic) CGPoint origin;

@property (nonatomic) CGFloat bottomMargin;
@property (nonatomic) CGFloat rightMargin;

- (void)centerInSuperView;
- (void)centerHorizontallyInSuperView;
- (void)centerVerticallyInSuperView;

- (void)verticallyAlignToView:(UIView *)aView;
- (void)horizontallyAlignToView:(UIView *)aView;

- (void)bringToFront;
- (void)sendToBack;

- (void)setAutoresizingNone;
- (void)setAutoresizingBottomLeft;
- (void)setAutoresizingBottomRight;
- (void)setAutoresizingTopLeft;
- (void)setAutoresizingTopRight;
- (void)setAutoresizingTopCenter;
- (void)setAutoresizingCenter;
- (void)setAutoresizingBottomCenter;
- (void)setAutoresizingWidthAndHeight;

- (void)show;
- (void)hide;

- (void)showAnimated;
- (void)hideAnimated;

- (void)showAnimatedWithDelay:(CGFloat)delay;
- (void)hideAnimatedWithDelay:(CGFloat)delay;

- (void)animateAlpha:(CGFloat)alpha withDelay:(CGFloat)delay;

- (void)darken;

- (void)setBorderWidth:(CGFloat)width color:(UIColor *)aColor;

- (void)addMultipleSubviews:(NSArray *)subviews;
- (void)bringSubviewsToFront:(NSArray *)subviews;

- (void)offsetAllSubview:(CGFloat)offset;


@end
