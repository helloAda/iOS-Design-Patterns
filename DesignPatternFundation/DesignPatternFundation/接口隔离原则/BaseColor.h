//
//  BaseColor.h
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseColor : NSObject

//这个是正确的
- (void)changeToColor:(UIColor *)color;
//这个frame就是没有必要的 是不遵循接口隔离原则的
//- (void)changeToColor:(UIColor *)color frame:(CGRect)frame;

@end
