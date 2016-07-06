//
//  ViewController.m
//  CategoryProject
//
//  Created by MYZ on 16/6/12.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+MYZ.h"
#import "UIImageView+WebCache.h"
#import "SDWebImageManager.h"

#import "NSString+MYZ.h"
#import "UIView+MYZ.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //图片分类
    //[self imageExtensionTest];
    
    //字符串分类
    [self stringExtension];
    
}


//字符串分类
- (void)stringExtension
{
    /**
     *  - (CGSize)myz_stringSizeWithMaxSize:(CGSize)maxSize andFont:(UIFont *)font;
    + (NSString *)myz_stringGetWeekdayFromDate:(NSString *)dateString;
    + (NSString *)myz_stringMD5WithInput:(NSString*)input;
    + (NSString *)myz_stringGetHomeDirectory;
    + (NSString *)myz_stringGetDocumentDirectory;
    + (NSString *)myz_stringGetCachesDirectory;
    + (NSString *)myz_stringGetTemporaryDirectory;
    - (float)myz_getFilePathSize;
     */
    
    
    
    NSString * str1 = @"zhishiyinweizairenqunzhongduokanleniyiyanzaiyebunengwangjinirongyan";
    UIFont * font = [UIFont systemFontOfSize:15];
    CGSize strSize = [str1 myz_stringSizeWithMaxSize:CGSizeMake(60, 600) andFont:font];
    UILabel * lab = [[UILabel alloc] init];
    lab.x = 60;
    lab.y = 20;
    lab.size = strSize;
    lab.backgroundColor = [UIColor lightGrayColor];
    lab.numberOfLines = 0;
    lab.font = font;
    lab.text = str1;
    [self.view addSubview:lab];
    
    
    NSLog(@"%@", [NSString myz_stringGetWeekdayFromDate:@"2016-07-06 16:52:00"]);
    NSLog(@"%@", [NSString myz_stringMD5WithInput:@"123"]);
    NSLog(@"%@", [NSString myz_stringGetHomeDirectory]);
    NSLog(@"%@", [NSString myz_stringGetDocumentDirectory]);
    NSLog(@"%@", [NSString myz_stringGetCachesDirectory]);
    NSLog(@"%@", [NSString myz_stringGetTemporaryDirectory]);
    
    float size = [[NSString myz_stringGetCachesDirectory] myz_getFilePathSize];
    NSLog(@" %.2f ", size);
}



//图片分类
- (void)imageExtensionTest
{
    //文字水印
    UIImageView * imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    imgView.image = [UIImage myz_imageWithImageName:@"11" andMarkTitle:@"hello thank you"];
    [self.view addSubview:imgView];
    
    //图片水印
    UIImageView * imgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 140, 100, 100)];
    imgView2.image = [UIImage myz_imageWithImageName:@"11" andMarkImageName:@"mark"];
    [self.view addSubview:imgView2];
    
    //剪切圆形图片
    UIImageView * imgView3 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 260, 100, 100)];
    UIImage * image = [UIImage imageNamed:@"11"];
    imgView3.image = [UIImage myz_imageWithCircleClipImage:image];
    [self.view addSubview:imgView3];
    
    //剪切圆形图片带边框
    UIImageView * imgView4 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 380, 100, 100)];
    imgView4.image = [UIImage imageNamed:@"00"];
    [self.view addSubview:imgView4];
    NSString * urlStr = @"http://s2.nuomi.bdimg.com/upload/deal/2014/1/V_L/623682-1391756281052.jpg";
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:urlStr] options:SDWebImageCacheMemoryOnly progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        
        imgView4.image = [UIImage myz_imageWithCircleClipImage:image andBorderWidth:20 andBorderColor:[UIColor colorWithRed:0.000 green:0.251 blue:0.502 alpha:1.000]];
        
    }];
    
    
    UIImageView * imgView5 = [[UIImageView alloc] initWithFrame:CGRectMake(140, 380, 100, 100)];
    UIImage * image5 = [UIImage imageNamed:@"21"];
    imgView5.image = [UIImage myz_imageWithCircleClipImage:image5 andBorderWidth:20 andBorderColor:[UIColor colorWithRed:0.000 green:0.251 blue:0.502 alpha:1.000]];
    [self.view addSubview:imgView5];
    
    //获得纯颜色的图片
    UIImageView * imgView6 = [[UIImageView alloc] initWithFrame:CGRectMake(140, 20, 100, 100)];
    imgView6.backgroundColor = [UIColor colorWithWhite:0.600 alpha:1.000];
    imgView6.contentMode = UIViewContentModeCenter;
    imgView6.image = [UIImage myz_imageWithColor:[UIColor brownColor] size:CGSizeMake(60, 80)];
    [self.view addSubview:imgView6];
    
    //获取View的截图, 有点模糊
    UIImageView * imgView7 = [[UIImageView alloc] initWithFrame:CGRectMake(140, 140, 100, 100)];
    imgView7.image = [UIImage myz_imageWithViewScreenShot:imgView5];
    [self.view addSubview:imgView7];
}




@end
