# QsegmentBar

[![CI Status](https://img.shields.io/travis/xuekey/QsegmentBar.svg?style=flat)](https://travis-ci.org/xuekey/QsegmentBar)
[![Version](https://img.shields.io/cocoapods/v/QsegmentBar.svg?style=flat)](https://cocoapods.org/pods/QsegmentBar)
[![License](https://img.shields.io/cocoapods/l/QsegmentBar.svg?style=flat)](https://cocoapods.org/pods/QsegmentBar)
[![Platform](https://img.shields.io/cocoapods/p/QsegmentBar.svg?style=flat)](https://cocoapods.org/pods/QsegmentBar)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
![1](1.png)
## Requirements

## Installation

QsegmentBar is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'QsegmentBar'
```

1.初始化一个 QSementBarVC
- (QSementBarVC *)segmentBarVC {
if (!_segmentBarVC) {
QSementBarVC *vc = [[QSementBarVC alloc] init];
[self addChildViewController:vc];
_segmentBarVC = vc;
}
return _segmentBarVC;
}

2.尺寸
self.segmentBarVC.segmentBar.frame = CGRectMake(0, 0, 300, 35);
self.segmentBarVC.view.frame = self.view.bounds;
[self.view addSubview:self.segmentBarVC.view];
self.navigationItem.titleView = self.segmentBarVC.segmentBar;


3.数据源
NSArray *items = @[@"专辑专辑", @"声xxx音", @"下载中xxxx", @"下载中xxxx", @"下载中xxxx"];

4.添加几个自控制器
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


6.SegmentBarConfig为配置信息，

## Author

xuekey, 328928303@qq.com

## License

QsegmentBar is available under the MIT license. See the LICENSE file for more info.
