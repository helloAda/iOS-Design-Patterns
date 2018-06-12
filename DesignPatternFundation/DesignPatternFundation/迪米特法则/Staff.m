//
//  Staff.m
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "Staff.h"

@implementation Staff

- (void)needComputerFix {
    /*
     当员工需要修理电脑的时候 只要告诉一下实现了代理的类，至于代理类里面怎么实现的不管。
     意思就是说无论IT部门人员离职或者换人修理，员工都不用管，只需要找IT部，而不用认识IT部的同事。
    */
    if (self.delegate && [self.delegate respondsToSelector:@selector(fixComputer)]) {
        [self.delegate fixComputer];
    }
}
@end
