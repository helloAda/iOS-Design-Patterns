//
//  AppleFactory.m
//  AbstractFactoryPattern
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "AppleFactory.h"
#import "iPhone.h"
#import "iWatch.h"

@implementation AppleFactory

- (BasePhone *)createPhone {
    return [[iPhone alloc] init];
}

- (BaseWatch *)createWatch {
    return [[iWatch alloc] init];
}

@end
