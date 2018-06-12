//
//  ScaleButtonView.m
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "ScaleButtonView.h"


@implementation ScaleButtonView

/**
 依赖倒转原则
 如果我们实现的方法遵循里氏代换原则，就不应该把不相关的方法暴露出去，破坏掉封装性
 如果说这个例子中 我们把changeBackground暴露出去，就会破坏封装性
 直接会影响里氏代换原则的操作，而且如果有类继承自这个类，又会造成其他额外的差异
 
 我们尽量要做到 抽象的方法(例如changeToNormalState)里用具体的实现(changeBackground)来实现，
 但是这个具体的实现不应该暴露出来。这个就叫做抽象不依赖于细节
 即实现changeToNormalState 不依赖于changeBackground
 而changeBackground依赖于changeToNormalState 即细节依赖于抽象
 */



/**
 这个方法是私有方法，并不会对外开放，把实现隔离起来了
 */
- (void)changeBackground {
    // todo
}

/**
 这个类是从父类继承过来的抽象方法
 它里面需要执行changeBackground这个方法
 */
- (void)changeToNormalState {
    [self changeBackground];
}


- (void)changeToDisableState {
    // todo
}


- (void)changeToHighlightState {
    // todo
}

@end
