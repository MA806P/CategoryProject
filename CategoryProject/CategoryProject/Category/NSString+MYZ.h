//
//  NSString+MYZ.h
//  CategoryProject
//
//  Created by 159CaiMini02 on 16/7/5.
//  Copyright © 2016年 myz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface NSString (MYZ)


/**
 *  获取字符串所占的尺寸
 *
 *  @param maxSize 字符串尺寸的最大值
 *  @param font    字符串的字体大小
 *
 *  @return 字符串所占的尺寸
 */
- (CGSize)myz_stringSizeWithMaxSize:(CGSize)maxSize andFont:(UIFont *)font;


/**
 *  根据日期字符串获取对应的周几
 *
 *  @param dateString 日期字符串格式 @"yyyy-MM-dd HH:mm:ss"
 *
 *  @return 字符串周几
 */
- (NSString *)myz_stringGetWeekdayFromDate:(NSString *)dateString;


@end
