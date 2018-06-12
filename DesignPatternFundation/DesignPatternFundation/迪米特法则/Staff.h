//
//  Staff.h
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerFixDelegate.h"

/**
 其实在iOS开发中 我们经常接触，就是delegate的形式可以很好的在两个对象间解耦合。
 */
@interface Staff : NSObject

//员工名字
@property (nonatomic, strong) NSString *name;

//代理
@property (nonatomic, weak) id<ComputerFixDelegate> delegate;

//需要修理电脑
- (void)needComputerFix;

@end
