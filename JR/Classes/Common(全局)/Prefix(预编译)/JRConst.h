//
//  JRConst.h
//  JR
//
//  Created by Zj on 17/8/18.
//  Copyright © 2017年 Zj. All rights reserved.
//

#ifndef JRConst_h
#define JRConst_h

/**
 字符串
 */


/**
 颜色
 */
#define JRWhiteColor [UIColor whiteColor] //白色
#define JRBlackColor [UIColor blackColor] //黑色
#define JRClearColor [UIColor clearColor] //透明色


/**
 尺寸
 */
#define JRScreenHeight [UIScreen mainScreen].bounds.size.height //屏幕高度
#define JRScreenWidth [UIScreen mainScreen].bounds.size.width //屏幕宽度
#define JRPadding 10 //间隔
#define JRRadius 6 //圆角


/**
 字体
 */
#define BAThinFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightUltraLight]
#define BACommonFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightRegular]
#define BABlodFont(size) [UIFont systemFontOfSize:size weight:UIFontWeightBold]

#define BACommonTextFontSize 16
#define BALargeTextFontSize 20
#define BASmallTextFontSize 14

#endif /* JRConst_h */
