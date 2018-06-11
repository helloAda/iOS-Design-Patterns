//
//  GoogleFactory.m
//  AbstractFactoryPattern
//
//  Created by HelloAda on 2018/6/11.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "GoogleFactory.h"
#import "Android.h"
#import "AndroidWatch.h"

@implementation GoogleFactory

- (BasePhone *)createPhone {
    return [[Android alloc] init];
}

- (BaseWatch *)createWatch {
    return [[AndroidWatch alloc] init];
}

@end
