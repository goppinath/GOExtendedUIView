//
//  UIView+GOExtension.m
//  GOExtendedUIView https://github.com/goppinath/GOExtendedUIView
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
#pragma mark - custom getters

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
#pragma mark - custom setters

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

- (void)setBorderWithColor:(UIColor *)color width:(CGFloat)width cornerRadius:(CGFloat)radius {
    
    [self.layer setBorderColor:color.CGColor];
    [self.layer setBorderWidth:width];
    [self.layer setCornerRadius:radius];
    [self.layer setMasksToBounds:YES];
}

- (void)setBorderWithColor:(UIColor *)color width:(CGFloat)width cornerRadius:(CGFloat)radius backgroundColor:(UIColor *)backgroundColor {
    
    [self setBorderWithColor:color width:width cornerRadius:radius];
    [self setBackgroundColor:backgroundColor];
}

- (void)setDashedBorderWithColor:(UIColor *)color width:(CGFloat)width cornerRadius:(CGFloat)radius; {
    
    [self setDashedBorderWithColor:color width:width cornerRadius:radius lineDashPattern:@[[NSNumber numberWithInt:10], [NSNumber numberWithInt:5]]];
}

- (void)setDashedBorderWithColor:(UIColor *)color width:(CGFloat)width cornerRadius:(CGFloat)radius lineDashPattern:(NSArray *)lineDashPattern {
    
    [self.layer setCornerRadius:radius];
    [self.layer setMasksToBounds:YES];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    [shapeLayer setPath:[UIBezierPath bezierPathWithRoundedRect:CGRectMake(0.0f, 0.0f, self.width, self.height) cornerRadius:radius].CGPath];
    
    [shapeLayer setStrokeColor:color.CGColor];
    [shapeLayer setFillColor:nil];
    [shapeLayer setLineWidth:width];
    [shapeLayer setLineDashPattern:lineDashPattern];
    
    [self.layer addSublayer:shapeLayer];
}

- (void)setShadowWithColor:(UIColor *)color shadowOpacity:(float)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowOffset:(CGSize)shadowOffset {
    
    [self setShadowWithColor:color shadowOpacity:shadowOpacity shadowRadius:shadowRadius shadowOffset:shadowOffset shadowPath:nil];
}

- (void)setShadowWithColor:(UIColor *)color shadowOpacity:(float)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowOffset:(CGSize)shadowOffset shadowPath:(UIBezierPath *)shadowPath {
    
    [self setClipsToBounds:NO];
    
    [self.layer setShadowColor:color.CGColor];
    [self.layer setShadowOpacity:shadowOpacity];
    [self.layer setShadowRadius:shadowRadius];
    [self.layer setShadowOffset:shadowOffset];
    [self.layer setShadowPath:shadowPath.CGPath];
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
    
    NSLog(@"%@ ==> X is:%f", NSStringFromClass([self class]), self.x);
}

- (void)printY {
    
    NSLog(@"%@ ==> Y is:%f", NSStringFromClass([self class]), self.y);
}

- (void)printWidth {
    
    NSLog(@"%@ ==> Width is:%f", NSStringFromClass([self class]), self.width);
}

- (void)printHeight {
    
    NSLog(@"%@ ==> Height is:%f", NSStringFromClass([self class]), self.height);
}

- (void)printOrigin {
    
    NSLog(@"%@ ==> Origin::X is:%f, Y is:%f", NSStringFromClass([self class]), self.x, self.y);
}

- (void)printSize {
    
    NSLog(@"%@ ==> Size::Width is:%f, Height is:%f", NSStringFromClass([self class]), self.width, self.height);
}

- (void)prinCenter {
    
    NSLog(@"%@ ==> Center::X is:%f, Y is:%f", NSStringFromClass([self class]), self.center.x, self.center.y);
}

- (void)printFrame {
    
    NSLog(@"%@ ==> Frame::X is:%f, Y is:%f, Width is:%f, Height is:%f", NSStringFromClass([self class]), self.x, self.y, self.width, self.height);
}

- (void)printBounds {
    
    NSLog(@"%@ ==> Bounds::X is:%f, Y is:%f, Width is:%f, Height is:%f", NSStringFromClass([self class]), self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height);
}

@end
