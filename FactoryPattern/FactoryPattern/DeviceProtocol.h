//
//  DeviceProtocol.h
//  FactoryPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DeviceProtocol <NSObject>

//打电话
- (void)phoneCall;

//系统信息
- (NSString *)systemInfomation;
@end
