//
//  QViewController.m
//  QsegmentBar
//
//  Created by xuekey on 06/23/2018.
//  Copyright (c) 2018 xuekey. All rights reserved.
//

#import "QViewController.h"
#import <QsegmentBar/QSementBarVC.h>

@interface QViewController ()
@property (nonatomic, weak) QSementBarVC *segmentBarVC;
@end

@implementation QViewController

- (QSementBarVC *)segmentBarVC {
    if (!_segmentBarVC) {
        QSementBarVC *vc = [[QSementBarVC alloc] init];
        [self addChildViewController:vc];
        _segmentBarVC = vc;
    }
    return _segmentBarVC;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    self.segmentBarVC.segmentBar.frame = CGRectMake(0, 0, 300, 35);
//    self.segmentBarVC.segmentBar.backgroundColor = [UIColor greenColor];
    self.navigationItem.titleView = self.segmentBarVC.segmentBar;
    
    self.segmentBarVC.view.frame = self.view.bounds;
    [self.view addSubview:self.segmentBarVC.view];
    
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    
        NSArray *items = @[@"专辑专辑", @"声xxx音", @"下载中xxxx", @"下载中xxxx", @"下载中xxxx"];
        
        // 添加几个自控制器
        // 在contentView, 展示子控制器的视图内容
        
        UIViewController *vc1 = [UIViewController new];
        vc1.view.backgroundColor = [UIColor redColor];
        
        UIViewController *vc2 = [UIViewController new];
        vc2.view.backgroundColor = [UIColor greenColor];
        
        UIViewController *vc3 = [UIViewController new];
        vc3.view.backgroundColor = [UIColor yellowColor];
        
        UIViewController *vc4 = [UIViewController new];
        vc4.view.backgroundColor = [UIColor greenColor];
        
        UIViewController *vc5 = [UIViewController new];
        vc5.view.backgroundColor = [UIColor yellowColor];
        
        
        [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2, vc3, vc4, vc5]];
        
        //segent配置信息
        //        SegmentBarConfig *config = [SegmentBarConfig defaultConfig];
        //        config.itemFont = ;
        //
        //        self.segmentBarVC.segmentBar.config = config;
        
        
        [self.segmentBarVC.segmentBar updateWithConfig:^(QSegmentBarConfig *config) {
            
            //            config.segmentBarBackColor = [UIColor cyanColor];
            //            config.itemNormalColor = [UIColor brownColor];
            //            config.itemSelectColor = [UIColor yellowColor];
            //            config.itemSC([UIColor brownColor]).itemNC([UIColor yellowColor]);
            
            config.itemNC([UIColor redColor]).itemSC([UIColor orangeColor]).indicatorEW(10);
            
            
            
            //            ^(UIColor *color) {
            //                [UIColor redColor]
            //                config.itemNormalColor = color;
            //                return config;
            //            };
            
            
            
            // config.a(10).b(20).
            // 函数
            // block
            // 链式编程特点: block, 作为一个类的属性, block, 返回值, 应该是这个实例
            //            a(10)
            //
            //            A  b1 b2
            //            A.b1()
            //            A.b2()
            //
            //
            //            b1().b2() = A.b2()
            
            
            
            //            config.itemFont = [UIFont fontWithName:@"Zapfino" size:10];
            //
            //            config.indicatorHeight = 5;
            //            config.indicatorColor = [UIColor blueColor];
            //            config.indicatorExtraW = 0;
            
        }];
        
        
//    });
    
}

@end
