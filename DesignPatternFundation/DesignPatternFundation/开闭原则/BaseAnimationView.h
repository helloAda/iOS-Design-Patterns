//
//  BaseAnimationView.h
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseAnimationView : UIView
/*
 如果这个类在项目中很多地方都是用到了，但是比如这个title不用了，也不要去删掉它
 这样可能出现错误，这个就是 ‘对修改关闭’
 */
@property (nonatomic, copy) NSString *title;


/**
 切换到正常状态

 @param animated 是否执行动画
 @param duration 持续时间
 */
- (void)changeToNormalStateAnimated:(BOOL)animated duration:(NSTimeInterval)duration;

/**
 切换到禁止状态
 
 @param animated 是否执行动画
 @param duration 持续时间
 */
- (void)changeToDisableStateAnimated:(BOOL)animated duration:(NSTimeInterval)duration;

@end

