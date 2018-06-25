//
//  ViewController.m
//  PrototypePattern
//
//  Created by HelloAda on 2018/6/25.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "ViewController.h"
#import "StudentModel.h"

/**
 原型模式指的是从一个已有的对象拷贝并创建出新的对象
 当一个类的实例之间存在差异,而这些差异仅是状态的若干组合,复制原型要比手工实例化更加方便
 当一个类并不容易创建(比如有着复杂的组合对象),且复制已有的组合对象要比对副本修改更加容易,此时,可以考虑使用原型模式
 在cocoa框架中的NSCopying协议就是原型模式
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 普通情况下
    StudentModel *stu1 = [[StudentModel alloc] init];
    stu1.name = @"小明";
    stu1.age = @(20);
    stu1.address = @"想去哪就去哪";
    stu1.totalScore = @"750";
    
    StudentModel *stu2 = [[StudentModel alloc] init];
    stu2.name = @"小妮";
    stu2.age = @(20);
    stu2.address = @"想去哪就去哪";
    stu2.totalScore = @"750";
    
    //用了原型模式
    StudentModel *stu3 = [stu1 clone];
    stu3.name = @"小王";
    
    
}



@end
