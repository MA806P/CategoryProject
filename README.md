# Category

<br>

### UIImage+MYZ

添加图片水印<br>
```
+ (UIImage *)myz_imageWithImageName:(NSString *)name andMarkImageName:(NSString *)markImageName;
```
<br>添加文字水印<br>
```
+ (UIImage *)myz_imageWithImageName:(NSString *)name andMarkTitle:(NSString *)title;
```

<br>剪切圆形图片<br>
```
+ (UIImage *)myz_imageWithCircleClipImage:(UIImage *)image;
```
<br>剪切圆形图片，并带有边框<br>
```
+ (UIImage *)myz_imageWithCircleClipImage:(UIImage *)image andBorderWidth:(CGFloat)width andBorderColor:(UIColor *)color;
```
<br>根据颜色来创建图片<br>
```
+ (UIImage *)myz_imageWithColor:(UIColor *)color size:(CGSize)size;
```
<br>获取对应视图的截图<br>
```
+ (UIImage *)myz_imageWithViewScreenShot:(UIView *)view;
```
<br>gif data 生成UIImage<br>
```
+ (UIImage *)myz_imageWithAnimatedGIFData:(NSData *)data;
+ (UIImage *)myz_imageWithAnimatedGIFURL:(NSURL *)url;
```

<br>
### NSDictionary+MYZ
<br>根据字典数据,打印出属性对应的代码<br>
```
- (void)myz_dictionaryGetPropertyCode;
```
<br>
### NSString+MYZ

<br>获取字符串所占的尺寸<br>
```
-(CGSize)myz_stringSizeWithMaxSize:(CGSize)maxSize andFont:(UIFont *)font;
```
<br>根据日期字符串获取对应的周几@"yyyy-MM-dd HH:mm:ss"<br>
```
+(NSString *)myz_stringGetWeekdayFromDate:(NSString *)dateString;
```
<br>MD5加密<br>
```
+ (NSString *)myz_stringMD5WithInput:(NSString*)input;
```

<br>获取沙盒根目录<br>
```
+ (NSString *)myz_stringGetHomeDirectory;
```
<br>获取Documents路径<br>
```
+ (NSString *)myz_stringGetDocumentDirectory;
```
<br>获取Cache路径<br>
```
+ (NSString *)myz_stringGetCachesDirectory;
```
<br>获取tmp路径<br>
```
+ (NSString *)myz_stringGetTemporaryDirectory;
```
<br>获取文件路径对应的文件大小, 单位MB<br>
```
- (float)myz_getFilePathSize;
```

