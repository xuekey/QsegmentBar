//
//  QSegmentBarConfig.h
//  SegmentBar
//
//  Created by  on 2016/11/26.
//  Copyright © 2016年 . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QSegmentBarConfig : NSObject


+ (instancetype)defaultConfig;

/** 背景颜色 */
@property (nonatomic, strong) UIColor *segmentBarBackColor;

@property (nonatomic, strong) UIColor *itemNormalColor;
@property (nonatomic, strong) UIColor *itemSelectColor;
@property (nonatomic, strong) UIFont *itemFont;

@property (nonatomic, strong) UIColor *indicatorColor;

@property (nonatomic, assign) CGFloat indicatorHeight;
@property (nonatomic, assign) CGFloat indicatorExtraW;

    // 内部实现, 在这个里面写, 外界, 只负责调用
    // 功能, 改变 itemNormalColor 的值
    //
@property (nonatomic, copy, readonly) QSegmentBarConfig *(^itemNC)(UIColor *color);
@property (nonatomic, copy, readonly) QSegmentBarConfig *(^itemSC)(UIColor *color);
@property (nonatomic, copy, readonly) QSegmentBarConfig *(^indicatorEW)(CGFloat w);
    
    

// 链式编程的改法
//- (QSegmentBarConfig *(^)(UIColor *color))itemNC;
//- (QSegmentBarConfig *(^)(UIColor *color))itemSC;



@end
