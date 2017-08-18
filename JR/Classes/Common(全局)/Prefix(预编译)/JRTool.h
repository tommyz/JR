//
//  JRTool.h
//  JR
//
//  Created by Zj on 17/8/18.
//  Copyright © 2017年 Zj. All rights reserved.
//

#ifndef JRTool_h
#define JRTool_h

//自定义颜色
#define BAColor(R, G, B) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1]

//随机色
#define BARandomColor BAColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))

//弧度转角度
#define JRRadianToAngle(radian) ((radian) * (180.0 / M_PI))

//角度转弧度
#define JRAngleToRadian(angle) ((angle) / 180.0 * M_PI)

//判断是否为4inch
#define JRScreen40inch ([UIScreen mainScreen].bounds.size.height == 568)

//判断是否为4.7inch
#define JRScreen47inch ([UIScreen mainScreen].bounds.size.height == 667)

//判断是否为5.5inch
#define JRScreen55inch ([UIScreen mainScreen].bounds.size.height == 736)

//keyWindow
#define JRKeyWindow [UIApplication sharedApplication].keyWindow

//防止循环引用
#define WeakObj(obj) __weak typeof(obj) obj##Weak = obj

//通知中心
#define JRNotificationCenter [NSNotificationCenter defaultCenter]

//获取temp
#define JRPathTemp NSTemporaryDirectory()

//获取沙盒 Document
#define JRPathDocument [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]

//获取沙盒 Cache
#define JRPathCache [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]

//log
#ifdef DEBUG
#define NSLog(format, ...) printf("\n[%s] %s [第%d行] %s\n", __TIME__, __FUNCTION__, __LINE__, [[NSString stringWithFormat:format, ## __VA_ARGS__] UTF8String]);
#else
#define NSLog(format, ...)
#endif

#endif /* JRTool_h */
