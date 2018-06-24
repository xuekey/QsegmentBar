//
//  SementBarVC.h
//  SegmentBar
//
//  Created by  on 2016/11/26.
//  Copyright © 2016年 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QSegmentBar.h"
@interface QSementBarVC : UIViewController


@property (nonatomic, weak) QSegmentBar *segmentBar;


- (void)setUpWithItems: (NSArray <NSString *>*)items childVCs: (NSArray <UIViewController *>*)childVCs;


@end
