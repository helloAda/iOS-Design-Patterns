//
//  BusinessCardAdapterProtocol.h
//  AdapterPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol BusinessCardAdapterProtocol <NSObject>

- (NSString *)name;

- (UIColor *)lineColor;

- (NSString *)phoneNumber;
@end
