//
//  TriangleButtonView.h
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseButtonView.h"

/**
 如果BaseButtonView 的三个方法已经不能满足需求了
 我们一般可能会继承一个新的方法去实现，但是其实可以像下面这个使用
 这个就是合成/聚合作用
 */
@interface TriangleButtonView : UIView

@property (nonatomic, strong) BaseButtonView *baseButton;

/**
 切换到出错状态
 */
- (void)changeToErrorState;

@end
