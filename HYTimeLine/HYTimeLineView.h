//
//  HYTimeLineView.h
//  test
//
//  Created by 韩加宇 on 2017/7/29.
//  Copyright © 2017年 韩加宇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYTimeLineView : UIView

/**
 初始化方法

 @param frame           frame
 @param colors          颜色数组
 @param titles          标题数组
 @param compleCount     已完成数量
 @return                self
 */
- (instancetype)initWithFrame:(CGRect)frame withColorArray:(NSArray *)colors withTitles:(NSArray *)titles withCompleCount:(NSInteger)compleCount;

@end
