//
//  ProtoypeProtocol.h
//  PrototypePattern
//
//  Created by HelloAda on 2018/6/25.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProtoypeProtocol <NSObject>

/**
 复制

 @return 返回自己的拷贝
 */
- (instancetype)clone;

@end
