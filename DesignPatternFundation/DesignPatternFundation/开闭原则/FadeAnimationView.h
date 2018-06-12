//
//  FadeAnimationView.h
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//


#import "BaseAnimationView.h"

/**
 这个就类 就将BaseAnimationView扩展了，尽量不要去修改BaseAnimationView
 这个就是’对扩展开放‘
 */
@interface FadeAnimationView : BaseAnimationView

@property (nonatomic, strong) NSAttributedString *attributedTitle;

/**
 切换到高亮的状态
 
 @param animated 是否执行动画
 @param duration 持续时间
 */
- (void)changeToHighlightStateAnimated:(BOOL)animated duration:(NSTimeInterval)duration;
@end
