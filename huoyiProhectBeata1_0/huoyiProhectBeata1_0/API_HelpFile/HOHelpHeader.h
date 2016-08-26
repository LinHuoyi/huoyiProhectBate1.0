//
//  HOHelpHeader.h
//  huoyiProhectBeata1_0
//
//  Created by 阿福体育科技公司 on 16/8/26.
//  Copyright © 2016年 阿福体育科技公司. All rights reserved.
//

#ifndef HOHelpHeader_h
#define HOHelpHeader_h

//获取当前时间戳
#define AFTIMEStamp10 [[NSDate date] timeIntervalSince1970] //10 位
#define AFTIMEStamp AFTIMEStamp10*1000                      //13 位
#define AFOneDayStamp 24*60*60                              //一天的时间搓

// 布局定位宏定义
#define AFScreenBounds [UIScreen mainScreen].bounds
#define AFScreenWidth [UIScreen mainScreen].bounds.size.width
#define AFScreenHeight [UIScreen mainScreen].bounds.size.height

#define AFViewWidth(w) AFScreenWidth * ((w)/750.0)
#define AFViewHeight(h) AFScreenHeight * ((h)/1334.0)

//不同设备的屏幕比例(当然倍数可以自己控制)
#define AFSizeScale (( AFScreenHeight > 667.0) ? AFScreenHeight/667.0 : 1)


#endif /* HOHelpHeader_h */
