//
//  CommonUsedAdapter.m
//  AdapterPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import "CommonUsedAdapter.h"
#import "SpecialModel.h"
#import "NormalModel.h"

@implementation CommonUsedAdapter

- (NSString *)name {
    
    NSString *name = nil;
    
    if ([self.data isMemberOfClass:[SpecialModel class]]) {
        SpecialModel *model = self.data;
        name = model.name;
    } else if ([self.data isMemberOfClass:[NormalModel class]]) {
        NormalModel *model = self.data;
        name = model.name;
    } else {
        name = nil;
    }
    
    return name;
}

- (UIColor *)lineColor {
    
    UIColor *lineColor = nil;
    
    if ([self.data isMemberOfClass:[SpecialModel class]]) {
        SpecialModel *model = self.data;
        if ([model.colorString isEqualToString:@"red"]) {
            lineColor = [UIColor redColor];
        } else if ([model.colorString isEqualToString:@"green"]) {
            lineColor = [UIColor greenColor];
        } else {
            lineColor = [UIColor blackColor];
        }
    } else if ([self.data isMemberOfClass:[NormalModel class]]) {
        NormalModel *model = self.data;
        lineColor = model.lineColor;
    } else {
        lineColor = nil;
    }
    
    return lineColor;
}

- (NSString *)phoneNumber {
    
    NSString *phoneNumber = nil;
    
    if ([self.data isMemberOfClass:[SpecialModel class]]) {
        SpecialModel *model = self.data;
        phoneNumber = model.phoneNumber;
    } else if ([self.data isMemberOfClass:[NormalModel class]]) {
        NormalModel *model = self.data;
        phoneNumber = model.phoneNumber;
    } else {
        phoneNumber = nil;
    }
    return phoneNumber;
}















@end
