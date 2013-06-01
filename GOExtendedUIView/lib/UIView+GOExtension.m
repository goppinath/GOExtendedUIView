//
//  UIView+GOExtension.m
//  GOExtendedUIView
//
//  Created by Goppinath Thurairajah on 5/25/13.
//  Copyright (c) 2013 Goppinath Thurairajah. http://goppinath.com
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "UIView+GOExtension.h"

@implementation UIView (GOExtension)

#pragma mark -
#pragma mark - custom setters

- (CGPoint)origin {
    
    return self.frame.origin;
}

- (CGFloat)x {
    
    return self.origin.x;
}

- (CGFloat)y {
    
    return self.origin.y;
}

- (CGSize)size {
    
    return self.frame.size;
}

- (CGFloat)width {
    
    return self.size.width;
}

- (CGFloat)height {
    
    return self.size.height;
}

#pragma mark -
#pragma mark - custom getters

- (void)setX:(CGFloat)x {
    
    [self setFrame:CGRectMake(x, self.y, self.width, self.height)];
}

- (void)setY:(CGFloat)y {
    
    [self setFrame:CGRectMake(self.x, y, self.width, self.height)];
}

- (void)setWidth:(CGFloat)width {
    
    [self setFrame:CGRectMake(self.x, self.y, width, self.height)];
}

- (void)setHeight:(CGFloat)height {
    
    [self setFrame:CGRectMake(self.x, self.y, self.width, height)];
}

- (void)setOrigin:(CGPoint)origin {
    
    [self setFrame:CGRectMake(origin.x, origin.y, self.width, self.height)];
}

- (void)setX:(CGFloat)x Y:(CGFloat)y {
    
    [self setFrame:CGRectMake(x, y, self.width, self.height)];
}

- (void)setSize:(CGSize)size {
    
    [self setFrame:CGRectMake(self.x, self.y, size.width, size.height)];
}

- (void)setWidth:(CGFloat)width height:(CGFloat)height {
    
    [self setFrame:CGRectMake(self.x, self.y, width, height)];
}

- (void)setX:(CGFloat)x Y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height {
    
    [self setFrame:CGRectMake(x, y, width, height)];
}

#pragma mark -
#pragma mark - custom layer property setters

- (void)setBorderWidth:(CGFloat)width color:(UIColor *)color cornerRadius:(CGFloat)radius {
    
    [self.layer setBorderWidth:width];
    [self.layer setBorderColor:color.CGColor];
    [self.layer setCornerRadius:radius];
}

#pragma mark -
#pragma mark - custom movers

- (void)moveX:(CGFloat)dx {
    
    [self setX:self.x + dx];
}

- (void)moveY:(CGFloat)dy {
    
    [self setY:self.y + dy];
}

- (void)moveX:(CGFloat)dx Y:(CGFloat)dy {
    
    [self setX:self.x + dx Y:self.y + dy];
}

- (void)moveCenterByX:(CGFloat)dx Y:(CGFloat)dy {
    
    [self setCenter:CGPointMake(self.center.x + dx, self.center.y + dy)];
}

#pragma mark -
#pragma mark - custom positioning

- (void)alignToSuperViewsCenter {
    
    [self setCenter:self.superview.center];
}

- (void)alignToSuperViewsCenterWithDifferenceX:(CGFloat)dx Y:(CGFloat)dy {
    
    [self setCenter:CGPointMake(self.superview.center.x + dx, self.superview.center.y + dy)];
}

#pragma mark -
#pragma mark - custom printers

- (void)printX {
    
    NSLog(@"GOExtension ==> X is:%f", self.x);
}

- (void)printY {
    
    NSLog(@"GOExtension ==> Y is:%f", self.y);
}

- (void)printWidth {
    
    NSLog(@"GOExtension ==> Width is:%f", self.width);
}

- (void)printHeight {
    
    NSLog(@"GOExtension ==> Height is:%f", self.height);
}

- (void)printOrigin {
    
    NSLog(@"GOExtension ==> Origin::X is:%f, Y is:%f", self.x, self.y);
}

- (void)printSize {
    
    NSLog(@"GOExtension ==> Size::Width is:%f, Height is:%f", self.width, self.height);
}

- (void)prinCenter {
    
    NSLog(@"GOExtension ==> Center::X is:%f, Y is:%f", self.center.x, self.center.y);
}

- (void)printFrame {
    
    NSLog(@"GOExtension ==> Frame::Width is:%f, Height is:%f, X is:%f, Y is:%f", self.x, self.y, self.width, self.height);
}

- (void)printBounds {
    
    NSLog(@"GOExtension ==> Bounds::Width is:%f, Height is:%f, X is:%f, Y is:%f", self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height);
}

@end
