//
//  ViewController.m
//  HYTimeLine
//
//  Created by 韩加宇 on 2017/7/31.
//  Copyright © 2017年 韩加宇. All rights reserved.
//

#import "ViewController.h"
#import "HYTimeLineView.h"

#define KSCREENW [[UIScreen mainScreen] bounds].size.width
#define KRGBCOLOR(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat w = KSCREENW - 40;
    
    CGRect lineViewFrame = CGRectMake( (KSCREENW - w) / 2, 100, w, 60);
    NSArray *colors = @[KRGBCOLOR(38, 196, 240), KRGBCOLOR(41, 233, 193), KRGBCOLOR(181, 224, 64), KRGBCOLOR(250, 186, 51)];
    NSArray *title = @[@"专员", @"主管", @"经理", @"总监"];
    NSInteger compleCount = colors.count - 2;
    
    HYTimeLineView *lineView = [[HYTimeLineView alloc] initWithFrame:lineViewFrame withColorArray:colors withTitles:title withCompleCount:compleCount];
    [self.view addSubview:lineView];
}


@end
