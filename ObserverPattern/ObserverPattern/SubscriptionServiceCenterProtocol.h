//
//  SubscriptionServiceCenterProtocol.h
//  ObserverPattern
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>

//用协议来约束订阅对象
@protocol SubscriptionServiceCenterProtocol <NSObject>

/**
 接收书刊信息

 @param message 书刊信息
 @param subscriptionNumber 书刊号码
 */
- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber;

@end
