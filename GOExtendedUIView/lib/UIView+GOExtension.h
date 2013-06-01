//
//  UIView+GOExtension.h
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

#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>

@interface UIView (GOExtension)

- (CGPoint)origin;
- (CGFloat)x;
- (CGFloat)y;
- (CGSize)size;
- (CGFloat)width;
- (CGFloat)height;

- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void)setOrigin:(CGPoint)origin;
- (void)setX:(CGFloat)x Y:(CGFloat)y;
- (void)setSize:(CGSize)size;
- (void)setWidth:(CGFloat)width height:(CGFloat)height;
- (void)setX:(CGFloat)x Y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;

- (void)setBorderWidth:(CGFloat)width color:(UIColor *)color cornerRadius:(CGFloat)radius;

- (void)alignToSuperViewsCenter;
- (void)alignToSuperViewsCenterWithDifferenceX:(CGFloat)dx Y:(CGFloat)dy;

- (void)moveX:(CGFloat)dx;
- (void)moveY:(CGFloat)dy;
- (void)moveX:(CGFloat)dx Y:(CGFloat)dy;

- (void)moveCenterByX:(CGFloat)dx Y:(CGFloat)dy;

- (void)printX;
- (void)printY;
- (void)printWidth;
- (void)printHeight;
- (void)printOrigin;
- (void)printSize;

- (void)prinCenter;
- (void)printFrame;
- (void)printBounds;

@end
