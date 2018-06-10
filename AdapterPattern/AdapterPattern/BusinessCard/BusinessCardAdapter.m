//
//  BusinessCardAdapter.m
//  AdapterPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import "BusinessCardAdapter.h"

@implementation BusinessCardAdapter

- (instancetype)initWithData:(id)data {
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}

- (NSString *)name {
    return nil;
}

- (UIColor *)lineColor {
    return nil;
}

- (NSString *)phoneNumber {
    return nil;
}
@end
