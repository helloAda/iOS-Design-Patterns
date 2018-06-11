//
//  ViewController.m
//  AbstractFactoryPattern
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "ViewController.h"
#import "FactoryManager.h"

/**
 抽象工厂指的是提供一个创建一系列相关或者相互依赖对象的接口，而无需制定它们具体的类
 如果有多个类有相同的行为，但实际实现不同，则可能需要某种抽象类型作为其父类被继承，抽象类型定义了所有相关具体类将共有的共同行为
 抽象工厂 比简单工厂多了一层抽象
 NSNumber 是工厂类
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BaseFactory *factory = [FactoryManager factoryWithBrand:kGoogle];
    BasePhone *phone = [factory createPhone];
    BaseWatch *watch = [factory createWatch];
    NSLog(@"%@,%@",phone,watch);
}

@end
