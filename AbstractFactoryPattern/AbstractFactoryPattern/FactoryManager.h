//
//  FactoryManager.h
//  AbstractFactoryPattern
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseFactory.h"
#import "AppleFactory.h"
#import "GoogleFactory.h"

typedef NS_ENUM(NSInteger ,FactoryType) {
    kApple,
    kGoogle
};

@interface FactoryManager : NSObject


/**
 获取工厂

 @param factoryType 工厂类型
 @return 工厂
 */
+ (BaseFactory *)factoryWithBrand:(FactoryType)factoryType;

@end
