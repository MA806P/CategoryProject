# Category
<br>
常用的一些category

<br>
### UIImage+MYZ
/**
 *  添加图片水印
 */
+ (UIImage *)myz_imageWithImageName:(NSString *)name andMarkImageName:(NSString *)markImageName;

/**
 *  添加文字水印
 */
+ (UIImage *)myz_imageWithImageName:(NSString *)name andMarkTitle:(NSString *)title;

/**
 *  剪切圆形图片
 */
+ (UIImage *)myz_imageWithCircleClipImage:(UIImage *)image;

/**
 *  剪切带有边框的圆形图片
 */
+ (UIImage *)myz_imageWithCircleClipImage:(UIImage *)image andBorderWidth:(CGFloat)width andBorderColor:(UIColor *)color;

/**
 *  根据颜色来创建图片
 */
+ (UIImage *)myz_imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  获取对应视图的截图
 */
+ (UIImage *)myz_imageWithViewScreenShot:(UIView *)view;

/** gif data 生成UIImage */
+ (UIImage *)myz_imageWithAnimatedGIFData:(NSData *)data;
+ (UIImage *)myz_imageWithAnimatedGIFURL:(NSURL *)url;

<br>
### NSDictionary+MYZ
/**
 *  根据字典数据,打印出属性对应的代码
 */
- (void)myz_dictionaryGetPropertyCode;

<br>
### NSString+MYZ
/**
 *  获取字符串所占的尺寸
 */
- (CGSize)myz_stringSizeWithMaxSize:(CGSize)maxSize andFont:(UIFont *)font;

/**
 *  根据日期字符串获取对应的周几@"yyyy-MM-dd HH:mm:ss"
 */
+ (NSString *)myz_stringGetWeekdayFromDate:(NSString *)dateString;

/**
 *  MD5加密
 */
+ (NSString *)myz_stringMD5WithInput:(NSString*)input;

/**
 *  获取沙盒根目录
 */
+ (NSString *)myz_stringGetHomeDirectory;

/**
 *  获取Documents路径
 */
+ (NSString *)myz_stringGetDocumentDirectory;

/**
 *  获取Cache路径
 */
+ (NSString *)myz_stringGetCachesDirectory;

/**
 *  获取tmp路径
 */
+ (NSString *)myz_stringGetTemporaryDirectory;

/**
 *  获取文件路径对应的文件大小, 单位MB
 */
- (float)myz_getFilePathSize;


