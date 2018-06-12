//
//  BaseButtonView.h
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseButtonView : UIView

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSAttributedString *attributedTitle;

/**
 切换到正常状态
 */
- (void)changeToNormalState;

/**
 切换到禁止状态
 */
- (void)changeToDisableState;

/**
 切换到高亮状态
 */
- (void)changeToHighlightState;
@end
