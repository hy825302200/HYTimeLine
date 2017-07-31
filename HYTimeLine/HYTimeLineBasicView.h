//
//  HYTimeLineBasicView.h
//  test
//
//  Created by 韩加宇 on 2017/7/29.
//  Copyright © 2017年 韩加宇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYTimeLineBasicView : UIView

/// lineView
@property (nonatomic, strong) UIView *lineView;

/**
 初始化方法

 @param frame       frame
 @param firstColor  渐变初始色
 @param lastColor   渐变结束色
 @param comple      是否完成
 @param title       标题
 @return            self
 */
- (instancetype)initWithFrame:(CGRect)frame withFirstColor:(UIColor *)firstColor withLastColor:(UIColor *)lastColor withComple:(BOOL)comple withTitle:(NSString *)title;

@end
