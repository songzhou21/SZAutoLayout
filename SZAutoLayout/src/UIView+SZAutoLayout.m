//
//  UIView+SZAutoLayout.m
//  SZAutoLayout
//
//  Created by songzhou on 2018/10/10.
//  Copyright © 2018 songzhou. All rights reserved.
//

#import "UIView+SZAutoLayout.h"

@implementation UIView (SZAutoLayout)
- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top leading:(CGFloat)leading bottom:(CGFloat)bottom trailing:(CGFloat)trailing toView:(id)view {
    return @[
             [self.topAnchor constraintEqualToAnchor:[view topAnchor] constant:top],
             [self.leadingAnchor constraintEqualToAnchor:[view leadingAnchor] constant:leading],
             [self.bottomAnchor constraintEqualToAnchor:[view bottomAnchor] constant:bottom],
             [self.trailingAnchor constraintEqualToAnchor:[view trailingAnchor] constant:trailing],
             ];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignToView:(id)view {
    return [self sz_alignTop:0 leading:0 bottom:0 trailing:0 toView:view];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top bottom:(CGFloat)bottom toView:(id)view {
    return @[
             [self.topAnchor constraintEqualToAnchor:[view topAnchor] constant:top],
             [self.bottomAnchor constraintEqualToAnchor:[view bottomAnchor] constant:bottom],
             ];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignLeading:(CGFloat)leading trailing:(CGFloat)trailing toView:(id)view {
    return @[
             [self.leadingAnchor constraintEqualToAnchor:[view leadingAnchor] constant:leading],
             [self.trailingAnchor constraintEqualToAnchor:[view trailingAnchor] constant:trailing],
             ];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignTop:(CGFloat)top leading:(CGFloat)leading toView:(id)view {
    return @[
             [self.topAnchor constraintEqualToAnchor:[view topAnchor] constant:top],
             [self.leadingAnchor constraintEqualToAnchor:[view leadingAnchor] constant:leading],
             ];
}

- (NSArray<NSLayoutConstraint *> *)sz_alignBottom:(CGFloat)bottom trailing:(CGFloat)trailing toView:(id)view {
    return @[
             [self.bottomAnchor constraintEqualToAnchor:[view bottomAnchor] constant:bottom],
             [self.trailingAnchor constraintEqualToAnchor:[view trailingAnchor] constant:trailing],
             ];
}

#pragma mark -
- (NSArray<NSLayoutConstraint *> *)sz_alignAnchorTop:(nullable NSNumber *)top leading:(nullable NSNumber *)leading bottom:(nullable NSNumber *)bottom trailing:(nullable NSNumber *)trailing toView:(id)view {
    NSMutableArray *constraints = [NSMutableArray array];
    
    if (top) {
        [constraints addObject:[self.topAnchor constraintEqualToAnchor:[view topAnchor] constant:top.doubleValue]];
    }
    
    if (leading) {
        [constraints addObject:[self.leadingAnchor constraintEqualToAnchor:[view leadingAnchor] constant:leading.doubleValue]];
    }
    
    if (bottom) {
        [constraints addObject:[self.bottomAnchor constraintEqualToAnchor:[view bottomAnchor] constant:bottom.doubleValue]];
    }
    
    if (trailing) {
        [constraints addObject:[self.trailingAnchor constraintEqualToAnchor:[view trailingAnchor] constant:trailing.doubleValue]];
    }
    
    return constraints;
}

#pragma mark -
- (void)sz_activateConstraints:(NSArray *)constraints {
    self.translatesAutoresizingMaskIntoConstraints = NO;

    NSMutableArray *ret = [NSMutableArray array];
    for (id o in constraints) {
        if ([o isKindOfClass:[NSLayoutConstraint class]]) {
            [ret addObject:o];
        } else if ([o isKindOfClass:[NSArray class]]) {
            [ret addObjectsFromArray:o];
        }
    }
    
    [NSLayoutConstraint activateConstraints:ret];
}
@end
