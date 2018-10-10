//
//  UIView+SZAutoLayout.m
//  SZAutoLayout
//
//  Created by songzhou on 2018/10/10.
//  Copyright © 2018 songzhou. All rights reserved.
//

#import "UIView+SZAutoLayout.h"

@implementation UIView (SZAutoLayout)
- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top leading:(CGFloat)leading bottom:(CGFloat)bottom trailing:(CGFloat)trailing toView:(__kindof UIView *)view {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    
    return @[
             [self.topAnchor constraintEqualToAnchor:view.topAnchor constant:top],
             [self.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:leading],
             [self.bottomAnchor constraintEqualToAnchor:view.bottomAnchor constant:bottom],
             [self.trailingAnchor constraintEqualToAnchor:view.trailingAnchor constant:trailing],
             ];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignToView:(__kindof UIView *)view {
    return [self sz_alignTop:0 leading:0 bottom:0 trailing:0 toView:view];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top bottom:(CGFloat)bottom toView:(__kindof UIView *)view {
    return [self sz_alignTop:top leading:0 bottom:bottom trailing:0 toView:view];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignLeading:(CGFloat)leading trailing:(CGFloat)trailing toView:(__kindof UIView *)view {
    return [self sz_alignTop:0 leading:leading bottom:0 trailing:trailing toView:view];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top leading:(CGFloat)leading toView:(__kindof UIView *)view {
    return [self sz_alignTop:top leading:leading bottom:0 trailing:0 toView:view];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignBottom:(CGFloat)bottom trailing:(CGFloat)trailing toView:(__kindof UIView *)view {
    return [self sz_alignTop:0 leading:0 bottom:bottom trailing:trailing toView:view];
}
@end
