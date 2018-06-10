//
//  DeviceCreator.m
//  FactoryPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import "DeviceCreator.h"
#import "DeviceiPhone.h"
#import "DeviceAndroid.h"

@implementation DeviceCreator

+ (BaseDevice *)deviceCreatorWithDeviceType:(DeviceType)deviceType {
    if (deviceType == DeviceTypeiPhone) {
        
        return [DeviceiPhone new];
        
    } else if (deviceType == DeviceTypeAndroid) {
        
        return [DeviceAndroid new];
        
    } else {
        
        return [BaseDevice new];
        
    }
}


@end
