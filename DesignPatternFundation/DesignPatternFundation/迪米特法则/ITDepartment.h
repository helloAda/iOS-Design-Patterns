//
//  ITDepartment.h
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerFixDelegate.h"
@interface ITDepartment : NSObject <ComputerFixDelegate>

//修理电脑
- (void)fixComputer;

@end
