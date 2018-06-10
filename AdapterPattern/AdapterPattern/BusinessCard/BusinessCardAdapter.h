//
//  BusinessCardAdapter.h
//  AdapterPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BusinessCardAdapterProtocol.h"
#import <UIKit/UIKit.h>

@interface BusinessCardAdapter : NSObject <BusinessCardAdapterProtocol>

//输入对象
@property (nonatomic, weak) id data;


/**
 与输入对象建立联系

 @param data 输入的对象
 @return 实例对象
 */
- (instancetype)initWithData:(id)data;
@end
