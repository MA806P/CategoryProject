//
//  NSString+MYZ.m
//  CategoryProject
//
//  Created by 159CaiMini02 on 16/7/5.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "NSString+MYZ.h"

@implementation NSString (MYZ)


- (CGSize)myz_stringSizeWithMaxSize:(CGSize)maxSize andFont:(UIFont *)font
{
    
//        NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
//        paragraphStyle.lineBreakMode = self.lineBreakMode;
//        paragraphStyle.alignment = self.textAlignment;
    
    NSDictionary * attributes = @{
                                  NSFontAttributeName : font
                                  //,NSParagraphStyleAttributeName : paragraphStyle
                                  //NSForegroundColorAttributeName
                                  };
    
    CGSize contentSize = [self boundingRectWithSize:maxSize
                                            options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading)
                                         attributes:attributes
                                            context:nil].size;
    return contentSize;
}



- (NSString *)myz_stringGetWeekdayFromDate:(NSString *)dateString
{
    // "1970-01-01 23:50:00",
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate * date = [dateFormatter dateFromString:dateString];
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitWeekday fromDate:date];
//    NSInteger month = [components month];
//    NSInteger day= [components day];
//    NSInteger hour = [components hour];
//    NSInteger minute = [components minute];
    
    NSInteger week = components.weekday;
    NSString *weekStr = @"";
    if(week==1){
        weekStr=@"周日";
    }
    else if(week==2){
        weekStr=@"周一";
    }
    else if(week==3){
        weekStr=@"周二";
    }
    else if(week==4){
        weekStr=@"周三";
    }
    else if(week==5){
        weekStr=@"周四";
    }
    else if(week==6){
        weekStr=@"周五";
    }
    else if(week==7){
        weekStr=@"周六";
    }
    
    
    return weekStr;
}



@end
