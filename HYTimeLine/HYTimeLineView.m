//
//  HYTimeLineView.m
//  test
//
//  Created by 韩加宇 on 2017/7/29.
//  Copyright © 2017年 韩加宇. All rights reserved.
//

#import "HYTimeLineView.h"
#import "HYTimeLineBasicView.h"

@interface HYTimeLineView ()

@property (nonatomic,strong) NSArray *colors;
@property (nonatomic,strong) NSArray *titles;
@property (nonatomic,assign) NSInteger count;
@property (nonatomic,assign) NSInteger compleCount;

@end

@implementation HYTimeLineView

- (instancetype)initWithFrame:(CGRect)frame withColorArray:(NSArray *)colors withTitles:(NSArray *)titles withCompleCount:(NSInteger)compleCount {
    if (self = [super initWithFrame:frame] ) {
        
        if (compleCount > titles.count || compleCount > colors.count || titles.count != colors.count) {
            
            return self;
        }
        
        _count = colors.count;
        _titles = titles;
        _colors = colors;
        _compleCount = compleCount;
        
        [self addChids];
    }
    return self;
}

// 添加子控件
- (void)addChids {

    CGFloat Width = CGRectGetWidth(self.frame) / _count;
    CGFloat intervalWidth = (Width - 30) * 0.5;
    
    for (int i = 0; i < _count; i++) {
        
        BOOL comple = i > _compleCount - 1 ? NO : YES;
        
        HYTimeLineBasicView *basicView;
        
        if (i == _count - 1) {
            basicView = [[HYTimeLineBasicView alloc] initWithFrame:CGRectMake(intervalWidth + (i * Width), 0, Width, 60) withFirstColor:_colors[i] withLastColor:nil withComple:comple withTitle:_titles[i]];
        }else {
            basicView = [[HYTimeLineBasicView alloc] initWithFrame:CGRectMake(intervalWidth + (i * Width), 0, Width, 60) withFirstColor:_colors[i] withLastColor:_colors[i + 1] withComple:comple withTitle:_titles[i]];
        }
    
        [self addSubview:basicView];
        
        if (i == _count - 1) {
            
            basicView.lineView.hidden = YES;
        }
    }
}

@end
