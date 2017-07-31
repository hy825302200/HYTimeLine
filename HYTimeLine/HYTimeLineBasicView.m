//
//  HYTimeLineBasicView.m
//  test
//
//  Created by 韩加宇 on 2017/7/29.
//  Copyright © 2017年 韩加宇. All rights reserved.
//

#import "HYTimeLineBasicView.h"

#define KSCREENW [[UIScreen mainScreen] bounds].size.width
#define KRGBCOLOR(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

@interface HYTimeLineBasicView ()

/// firstColor
@property (nonatomic, strong) UIColor *firstColor;
/// lastColor
@property (nonatomic, strong) UIColor *lastColor;
/// 是否完成
@property (nonatomic, assign) BOOL comple;
/// title
@property (nonatomic, copy) NSString *title;

@end

@implementation HYTimeLineBasicView

- (instancetype)initWithFrame:(CGRect)frame withFirstColor:(UIColor *)firstColor withLastColor:(UIColor *)lastColor withComple:(BOOL)comple withTitle:(NSString *)title {
    
    if (self = [super initWithFrame:frame]) {
        
        _firstColor = firstColor;
        _lastColor = lastColor;
        _comple = comple;
        _title = title;
        
        [self  addChids];

    }
    return self;
}


//添加子控件
- (void)addChids {
    // 画圆圈
    UIView *cycleView = [[UIView alloc] initWithFrame:CGRectMake(10, 30, 20, 20)];
    // 设置圆角
    cycleView.layer.cornerRadius = 10;
    
    // 完成 和 渐变初始色不为空
    if (_comple && _firstColor != nil) {
        
       cycleView.backgroundColor = _firstColor;
    }else {
    
        cycleView.backgroundColor = KRGBCOLOR(220, 220, 220);
    }
    
    CGFloat cx = CGRectGetWidth(cycleView.frame);
    [self addSubview:cycleView];
    
    // 下面的字
    UILabel *bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 55, 25, 20)];
    bottomLabel.text = _title;
    bottomLabel.textColor = [UIColor grayColor];
    bottomLabel.font = [UIFont systemFontOfSize:12];
    [self addSubview:bottomLabel];
    
    // 线
    CGFloat lineY = CGRectGetMidY(cycleView.frame) - 2;
    CGFloat lineW = CGRectGetWidth(self.frame) - cx;
    _lineView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(cycleView.frame), lineY, lineW, 4)];
    if (_comple && _firstColor != nil && _lastColor != nil) {
        // 颜色渐变
        CAGradientLayer *gradientLayer = [CAGradientLayer layer];
        gradientLayer.colors = @[(__bridge id)_firstColor.CGColor, (__bridge id)_lastColor.CGColor];
        gradientLayer.startPoint = CGPointMake(0, 0);
        gradientLayer.endPoint = CGPointMake(1.0, 0);
        gradientLayer.frame = CGRectMake(0, 0, lineW, 4);;
        [_lineView.layer addSublayer:gradientLayer];
    }else {
        
        _lineView.backgroundColor = KRGBCOLOR(220, 220, 220);
    }
    [self addSubview:_lineView];
}


@end
