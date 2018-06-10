//
//  DeviceCreator.h
//  FactoryPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDevice.h"

typedef NS_ENUM(NSInteger, DeviceType) {
    DeviceTypeiPhone,
    DeviceTypeAndroid
};

@interface DeviceCreator : NSObject

/**
 根据标签创建手机
 
 @param deviceType 手机标签
 @return 对应的手机
 */
+ (BaseDevice *)deviceCreatorWithDeviceType:(DeviceType)deviceType;
@end
