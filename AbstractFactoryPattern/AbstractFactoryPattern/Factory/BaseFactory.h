//
//  BaseFactory.h
//  AbstractFactoryPattern
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasePhone.h"
#import "BaseWatch.h"

@interface BaseFactory : NSObject


/**
 创建手机

 @return 手机
 */
- (BasePhone *)createPhone;

/**
 创建手表

 @return 手表
 */
- (BaseWatch *)createWatch;

@end
