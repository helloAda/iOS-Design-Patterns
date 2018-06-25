//
//  StudentModel.h
//  PrototypePattern
//
//  Created by HelloAda on 2018/6/25.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtoypeProtocol.h"

@interface StudentModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age
@property (nonatomic, strong) NSString *address;
//还有很多属性和其它对象等...比较复杂的
@property (nonatomic, strong) NSNumber *totalScore;


/**
 实现协议的拷贝方法

 @return 示例
 */
- (instancetype)clone;

@end
