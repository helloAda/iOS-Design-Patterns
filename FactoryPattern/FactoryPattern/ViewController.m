//
//  ViewController.m
//  FactoryPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import "ViewController.h"
#import "DeviceCreator.h"

/**
 工厂类以及其实例化出来的子类都不是抽象类,所以称之为简单工厂(制造者与产品都是具体的实现类)
 简单工厂灵活性较差,但其简单直白的特性,适用于层级结构简单的场景
 
 简单工厂的使用场景
 1 简化生产流程
 2 隔离生产产品的细节
 3 不同类型的产品之间有着一些共同的功能
 4 简单工厂是一个具体的工厂(就像这个例子就是生产手机)
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BaseDevice *iPhone = [DeviceCreator deviceCreatorWithDeviceType:DeviceTypeiPhone];
    [iPhone phoneCall];
    NSLog(@"%@",[iPhone systemInfomation]);
    
    BaseDevice *android = [DeviceCreator deviceCreatorWithDeviceType:DeviceTypeAndroid];
    [android phoneCall];
    NSLog(@"%@",[android systemInfomation]);
    
}




@end
