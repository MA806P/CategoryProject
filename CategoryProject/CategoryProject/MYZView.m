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
        
//        UIImageView * imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
//        imgView.image = [UIImage imageWithImageName:@"12" andMarkTitle:@"hello thank you"];
//        [self addSubview:imgView];
//        
//        UIImageView * imgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 140, 100, 100)];
//        imgView2.image = [UIImage imageWithImageName:@"12" andMarkImageName:@"mark"];
//        [self addSubview:imgView2];
//        
//        
        UIImageView * imgView3 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 260, 100, 100)];
        imgView3.backgroundColor = [UIColor lightGrayColor];
//        [imgView3 sd_setImageWithURL:[NSURL URLWithString:@"http://s2.nuomi.bdimg.com/upload/deal/2014/1/V_L/623682-1391756281052.jpg"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
//            NSLog(@"%@", error);
//        }];
        
        
//        [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:@"http://s2.nuomi.bdimg.com/upload/deal/2014/1/V_L/623682-1391756281052.jpg"] options:SDWebImageCacheMemoryOnly progress:^(NSInteger receivedSize, NSInteger expectedSize) {
//            
//        } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
//            
//            imgView3.image = [UIImage imageWithCircleClipImage:image andBorderWidth:20 andBorderColor:[UIColor redColor]];
//            
//        }];
        
        UIImage * image = [UIImage imageNamed:@"12"];
        imgView3.image = [UIImage imageWithCircleClipImage:image andBorderWidth:10 andBorderColor:[UIColor redColor]];
        
        [self addSubview:imgView3];
        
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
