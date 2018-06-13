//
//  UserInfoManagerCenter.h
//  SingletonPattern
//
//  Created by HelloAda on 2018/6/13.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfoManagerCenter : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;

+ (instancetype)managerCenter;

@end
