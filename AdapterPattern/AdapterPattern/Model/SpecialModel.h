//
//  SpecialModel.h
//  AdapterPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SpecialModel : NSObject

//名字
@property (nonatomic, strong) NSString *name;

//颜色
@property (nonatomic, strong) NSString *colorString;

//电话号码
@property (nonatomic, strong) NSString *phoneNumber;
@end
