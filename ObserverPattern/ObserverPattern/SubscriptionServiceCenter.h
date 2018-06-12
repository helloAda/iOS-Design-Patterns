//
//  SubscriptionServiceCenter.h
//  ObserverPattern
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscriptionServiceCenterProtocol.h"

/**
 这个示例 以 订阅书刊为例子
 
 书刊发行机构发行书刊
     |      |   *** |
     |      |   *** |
   书刊A   书刊B     其他书刊
 
                            书刊发行机构可以发行书刊，客户可以订阅任何一个书刊。
                            这里被观察者是(书刊发行机构) 观察者是(订阅客户)
                            但是并不是每个人都可以随便订阅的，在这里就是实现了协议的客户才可以订阅
                            即每个人都需要提供信息，这样发行机构才可以正确的将书刊发送给客户。即限定了观察者
    甲     乙     其他用户
    |      |  *** |
    订阅书刊用户
 */

/*
 在iOS中KVO和通知中心都是观察者模式
 */
@interface SubscriptionServiceCenter : NSObject

#pragma mark - 维护订阅信息
/**
 创建订阅号

 @param subscriptionNumber 订阅号码
 */
+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber;


/**
 移除订阅号

 @param subscriptionNumber 订阅号码
 */
+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber;

#pragma mark - 维护客户信息
/**
 添加客户到具体的订阅号中

 @param customer 客户
 @param subscriptionNumber 订阅号码
 */
+ (void)addCustomer:(id <SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 从具体的订阅号中移除客户
 
 @param customer 客户
 @param subscriptionNumber 订阅号码
 */
+ (void)removeCustomer:(id <SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;

#pragma mark - 发送消息
/**
 发送消息到具体的订阅号当中

 @param message 消息
 @param subscriptionNumber 订阅号码
 */
+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;
@end
