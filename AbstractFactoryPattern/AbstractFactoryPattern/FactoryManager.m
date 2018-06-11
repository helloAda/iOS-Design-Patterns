//
//  FactoryManager.m
//  AbstractFactoryPattern
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "FactoryManager.h"

@implementation FactoryManager

+ (BaseFactory *)factoryWithBrand:(FactoryType)factoryType {
    BaseFactory *factory = nil;
    if (factoryType == kApple) {
        factory = [[AppleFactory alloc] init];
    } else if (factoryType == kGoogle) {
        factory = [[GoogleFactory alloc] init];
    } else {
        factory = [[BaseFactory alloc] init];
    }
    return factory;
}
@end
