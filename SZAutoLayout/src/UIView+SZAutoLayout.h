//
//  UIView+SZAutoLayout.h
//  SZAutoLayout
//
//  Created by songzhou on 2018/10/10.
//  Copyright © 2018 songzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (SZAutoLayout)

#pragma mark - Constraining multiple edges of two views
/// Align all 4 edges to another view with offset
- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top leading:(CGFloat)leading bottom:(CGFloat)bottom trailing:(CGFloat)trailing toView:(id)view;

/// convenience methods
/// Align all 4 edges to another view
- (NSArray<NSLayoutConstraint *> *)sz_alignToView:(__kindof UIView *)view;

- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top bottom:(CGFloat)bottom toView:(id)view;
- (NSArray<NSLayoutConstraint *> *)sz_alignLeading:(CGFloat)leading trailing:(CGFloat)trailing toView:(id)view;
- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top leading:(CGFloat)leading toView:(id)view;
- (NSArray<NSLayoutConstraint *> *)sz_alignBottom:(CGFloat)bottom trailing:(CGFloat)trailing toView:(id)view;

/// Align all 4 edges to another view, general method
- (NSArray<NSLayoutConstraint *> *)sz_alignAnchorTop:(nullable NSNumber *)top leading:(nullable NSNumber *)leading bottom:(nullable NSNumber *)bottom trailing:(nullable NSNumber *)trailing toView:(id)view;

#pragma mark - Active constraints
- (void)sz_activateConstraints:(NSArray *)constraints;

@end

NS_ASSUME_NONNULL_END
