//
//  UIBarButtonItem+Extension.m
//  微博项目
//
//  Created by wtlf on 15/9/25.
//  Copyright (c) 2015年 etcxm. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

// 设置导航栏的左右两边的item属性
+ (UIBarButtonItem *)barButtonItemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    
 
    UIButton *Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    // 设置图片
    [Btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [Btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    
    [Btn sizeToFit];
    
    // 监听点击
    [Btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    return  [[UIBarButtonItem alloc] initWithCustomView:Btn];
}

+ (UIBarButtonItem *)barButtonItemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action title:(NSString *)title
{


    
    UIButton *Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 设置图片
    [Btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [Btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [Btn setTitle:title forState:UIControlStateNormal];
    
    // 设置文字颜色
    [Btn setTitleColor:AFColorFontBlack forState:UIControlStateNormal];
    [Btn setTitleColor:AFColorFontGray forState:UIControlStateHighlighted];
    if ([title isEqualToString:@"预约记录"]) {
        [Btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    if ([title isEqualToString:@"发送"]) {
        [Btn setTitleColor:AFColorLabelGreen forState:UIControlStateNormal];
    }
    // 设置文字大小
    Btn.titleLabel.font = AFSizeFont30;
    
    
    [Btn sizeToFit];
    
    // 监听点击
    [Btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    return  [[UIBarButtonItem alloc] initWithCustomView:Btn];

}



@end