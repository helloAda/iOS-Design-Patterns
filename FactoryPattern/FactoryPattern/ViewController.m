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
