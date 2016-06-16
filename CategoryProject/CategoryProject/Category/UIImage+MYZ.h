//
//  UIImage+MYZ.h
//  CategoryProject
//
//  Created by MYZ on 16/6/13.
//  Copyright © 2016年 myz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MYZ)

/**
 *  添加图片水印
 *
 *  @param name          图片名
 *  @param markImageName 水印图片名
 *
 *  @return 添加过水印的图片
 */
+ (UIImage *)imageWithImageName:(NSString *)name andMarkImageName:(NSString *)markImageName;
/**
 *  添加文字水印
 *
 *  @param name  图片名
 *  @param title 要加水印的文字
 *
 *  @return 添加过文字的水印
 */
+ (UIImage *)imageWithImageName:(NSString *)name andMarkTitle:(NSString *)title;


+ (UIImage *)imageWithCircleClipImage:(UIImage *)image;


+ (UIImage *)imageWithCircleClipImage:(UIImage *)image andBorderWidth:(CGFloat)width andBorderColor:(UIColor *)color;

@end
