//
//  QSegmentBarConfig.m
//  SegmentBar
//
//  Created by  on 2016/11/26.
//  Copyright © 2016年 . All rights reserved.
//
//#import "ViewController.h"
#import "QSegmentBarConfig.h"

@implementation QSegmentBarConfig

+ (instancetype)defaultConfig {
    
    QSegmentBarConfig *config = [[QSegmentBarConfig alloc] init];
    config.segmentBarBackColor = [UIColor clearColor];
    config.itemFont = [UIFont systemFontOfSize:15];
    config.itemNormalColor = [UIColor lightGrayColor];
    config.itemSelectColor = [UIColor redColor];
    
    config.indicatorColor = [UIColor redColor];
    config.indicatorHeight = 2;
    config.indicatorExtraW = 10;
    
    return config;
    
}

    - (QSegmentBarConfig *(^)(UIColor *))itemNC
    {
        
        return ^(UIColor *color) {
            self.itemNormalColor = color;
            return self;
        };
        
    }
    
    - (QSegmentBarConfig *(^)(UIColor *))itemSC
    {
        
        return ^(UIColor *color) {
            self.itemSelectColor = color;
            return self;
        };
        
    }

    
    - (QSegmentBarConfig *(^)(CGFloat))indicatorEW
    {
        return ^(CGFloat w) {
            self.indicatorExtraW = w;
            return self;
        };
    }
    

//- (QSegmentBarConfig *(^)(UIColor *))itemNC {
//
//    return ^(UIColor *color){
//        self.itemNormalColor = color;
//        return self;
//    };
//
//}
//
//-(QSegmentBarConfig *(^)(UIColor *))itemSC {
//    return ^(UIColor *color){
//        self.itemSelectColor = color;
//        return self;
//    };
//}


@end
