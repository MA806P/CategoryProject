//
//  UIImage+MYZ.m
//  CategoryProject
//
//  Created by MYZ on 16/6/13.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "UIImage+MYZ.h"

const CGFloat marginRight = 8;
const CGFloat marginBottom = 5;

@implementation UIImage (MYZ)


+ (UIImage *)imageWithImageName:(NSString *)name andMarkImageName:(NSString *)markImageName
{
    
    UIImage * image = [UIImage imageNamed:name];
    
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    [image drawAtPoint:CGPointZero];
    
    UIImage * markImage = [UIImage imageNamed:markImageName];
    
    CGFloat markX = image.size.width - markImage.size.width - marginRight;
    CGFloat markY = image.size.height - markImage.size.height - marginBottom;
    [markImage drawAtPoint:CGPointMake(markX, markY)];
    
    return UIGraphicsGetImageFromCurrentImageContext();
}



+ (UIImage *)imageWithImageName:(NSString *)name andMarkTitle:(NSString *)title
{
    UIImage * image = [UIImage imageNamed:name];
    
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    [image drawAtPoint:CGPointZero];
    
    NSString * markTitle = [NSString stringWithFormat:@"@%@",title];
    
    UIFont * titleFont = [UIFont systemFontOfSize:14];
    NSDictionary * titleAttributes = @{NSFontAttributeName:titleFont, NSForegroundColorAttributeName:[UIColor whiteColor]};
    CGSize titleSize = [markTitle boundingRectWithSize:image.size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:titleAttributes context:nil].size;
    
    CGFloat markX = image.size.width - titleSize.width - marginRight;
    CGFloat markY = image.size.height - titleSize.height - marginBottom;
    [markTitle drawAtPoint:CGPointMake(markX, markY) withAttributes:titleAttributes];
    
    
    return UIGraphicsGetImageFromCurrentImageContext();
}



+ (UIImage *)imageWithCircleClipImage:(UIImage *)image
{
    //NSLog(@"%@", NSStringFromCGSize(image.size));
    
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    CGContextRef cr = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(cr, CGRectMake(0, 0, image.size.width, image.size.height));
    CGContextClip(cr);
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    return UIGraphicsGetImageFromCurrentImageContext();

}

+ (UIImage *)imageWithCircleClipImage:(UIImage *)image andBorderWidth:(CGFloat)width andBorderColor:(UIColor *)color
{
    CGFloat imageW = image.size.width;
    CGFloat imageH = image.size.height;
    CGFloat imageX;
    CGFloat imageY;
    CGFloat equalWH;
    if (imageW >= imageH)
    {
        equalWH = imageH;
        imageX = -(imageW - imageH)*0.5;
        imageY = 0;
    }
    else
    {
        equalWH = imageW;
        imageX = 0;
        imageY = -(imageH - imageW)*0.5;
    }
    
    
    NSLog(@" %.2lf %.2lf  %.2lf",imageX, imageY, equalWH);
    
    CGSize borderCircleSize = CGSizeMake(equalWH + width*2, equalWH + width*2);
    UIGraphicsBeginImageContextWithOptions(borderCircleSize, NO, 0);
    
    CGContextRef cr = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(cr, CGRectMake(0, 0, borderCircleSize.width, borderCircleSize.height));
    [color set];
    CGContextFillPath(cr);
    
    CGRect clipFrame = CGRectMake(width, width, equalWH, equalWH);
    CGContextAddEllipseInRect(cr, clipFrame);
    //[[UIColor whiteColor] set];
    //CGContextFillPath(cr);
    CGContextClip(cr);
    
    
    [image drawInRect:CGRectMake(imageX+width, imageY+width, image.size.width, image.size.height)];
    return UIGraphicsGetImageFromCurrentImageContext();
    
}



@end