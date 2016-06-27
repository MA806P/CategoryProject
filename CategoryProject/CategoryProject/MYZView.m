//
//  MYZView.m
//  CategoryProject
//
//  Created by MYZ on 16/6/12.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "MYZView.h"
#import "UIImage+MYZ.h"
#import "UIImageView+WebCache.h"
#import "SDWebImageManager.h"

@implementation MYZView



- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        
        UIImageView * imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
        imgView.image = [UIImage imageWithImageName:@"11" andMarkTitle:@"hello thank you"];
        [self addSubview:imgView];
        
        UIImageView * imgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 140, 100, 100)];
        imgView2.image = [UIImage imageWithImageName:@"11" andMarkImageName:@"mark"];
        [self addSubview:imgView2];
        
        
        UIImageView * imgView3 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 260, 100, 100)];
        UIImage * image = [UIImage imageNamed:@"11"];
        imgView3.image = [UIImage imageWithCircleClipImage:image];
        [self addSubview:imgView3];
        
        
        UIImageView * imgView4 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 380, 100, 100)];
        imgView4.image = [UIImage imageNamed:@"00"];
        [self addSubview:imgView4];
        NSString * urlStr = @"http://s2.nuomi.bdimg.com/upload/deal/2014/1/V_L/623682-1391756281052.jpg";
        [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:urlStr] options:SDWebImageCacheMemoryOnly progress:^(NSInteger receivedSize, NSInteger expectedSize) {
            
        } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
            
            imgView4.image = [UIImage imageWithCircleClipImage:image andBorderWidth:20 andBorderColor:[UIColor colorWithRed:0.000 green:0.251 blue:0.502 alpha:1.000]];
            
        }];
        
        
        
        UIImageView * imgView5 = [[UIImageView alloc] initWithFrame:CGRectMake(140, 380, 100, 100)];
        UIImage * image5 = [UIImage imageNamed:@"21"];
        imgView5.image = [UIImage imageWithCircleClipImage:image5 andBorderWidth:20 andBorderColor:[UIColor colorWithRed:0.000 green:0.251 blue:0.502 alpha:1.000]];
        [self addSubview:imgView5];
        
        //获得纯颜色的图片
        UIImageView * imgView6 = [[UIImageView alloc] initWithFrame:CGRectMake(140, 20, 100, 100)];
        imgView6.backgroundColor = [UIColor whiteColor];
        imgView6.contentMode = UIViewContentModeCenter;
        imgView6.image = [UIImage imageWithColor:[UIColor brownColor] size:CGSizeMake(60, 80)];
        [self addSubview:imgView6];
        
        //获取View的截图, 有点模糊
        UIImageView * imgView7 = [[UIImageView alloc] initWithFrame:CGRectMake(140, 140, 100, 100)];
        imgView7.image = [UIImage imageWithViewScreenShot:imgView5];
        [self addSubview:imgView7];
        
    }
    return self;
}





//- (void)drawRect:(CGRect)rect
//{
//    UIImage * image = [UIImage imageNamed:@"10"];
//    //UIGraphicsBeginImageContextWithOptions(CGSizeMake(100, 100), NO, 0);
//    
//    
//    [image drawInRect:CGRectMake(0, 0, 375, 100)];
//    
//}









@end
