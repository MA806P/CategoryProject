//
//  NSDictionary+MYZ.m
//  CategoryProject
//
//  Created by 159CaiMini02 on 16/7/5.
//  Copyright © 2016年 myz. All rights reserved.
//

#import "NSDictionary+MYZ.h"

@implementation NSDictionary (MYZ)

- (void)myz_dictionaryGetPropertyCode
{
    //code come frome : https://github.com/leeSmile/tools/tree/master/textTools
    
    // 属性跟字典的key一一对应
    NSMutableString *codes = [NSMutableString string];
    // 遍历字典中所有key取出来
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        // key:属性名
        NSString *code;
        if ([obj isKindOfClass:[NSString class]]) {
            code = [NSString stringWithFormat:@"@property (nonatomic ,copy) NSString *%@;",key];
        }else if ([obj isKindOfClass:NSClassFromString(@"__NSCFBoolean")]){
            code = [NSString stringWithFormat:@"@property (nonatomic ,assign) BOOL %@;",key];
        }else if ([obj isKindOfClass:[NSNumber class]]){
            code = [NSString stringWithFormat:@"@property (nonatomic ,assign) NSInteger %@;",key];
        }else if ([obj isKindOfClass:[NSArray class]]){
            code = [NSString stringWithFormat:@"@property (nonatomic ,copy) NSArray *%@;",key];
        }else if ([obj isKindOfClass:[NSDictionary class]]){
            code = [NSString stringWithFormat:@"@property (nonatomic ,strong) NSDictionary *%@;",key];
        }
        [codes appendFormat:@"\n%@\n",code];
        
    }];
    
    NSLog(@"%@",codes);
}

@end
