//
//  SubscriptionServiceCenter.m
//  ObserverPattern
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "SubscriptionServiceCenter.h"

static NSMutableDictionary *_subscriptionDictionary = nil;

@implementation SubscriptionServiceCenter

+ (void)initialize {
    if (self == [SubscriptionServiceCenter class]) {
        _subscriptionDictionary = [NSMutableDictionary dictionary];
    }
}

+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (!hashTable) {
        hashTable = [NSHashTable weakObjectsHashTable];
        [_subscriptionDictionary setObject:hashTable forKey:subscriptionNumber];
    }
}

+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        [_subscriptionDictionary removeObjectForKey:subscriptionNumber];
    }
}

+ (void)addCustomer:(id<SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSParameterAssert(customer);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        [hashTable addObject:customer];
    }
}

+ (void)removeCustomer:(id<SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber {
    //customer可以为nil 因为可能已经被释放掉了
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        [hashTable removeObject:customer];
    }
}

+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        NSEnumerator *enumerator = [hashTable objectEnumerator];
        id <SubscriptionServiceCenterProtocol> object = nil;
        //给每一个实现了协议(即订阅了书刊并提供了信息)的客户 发送信息
        while (object = [enumerator nextObject]) {
            if ([object respondsToSelector:@selector(subscriptionMessage:subscriptionNumber:)]) {
                [object subscriptionMessage:message subscriptionNumber:subscriptionNumber];
            }
        }
        
    }
}


#pragma mark - 私有方法

/**
 判断订阅号是否存在

 @param subscriptionNumber 订阅号码
 @return 订阅号信息
 */
+ (NSHashTable *)existSubscriptionNumber:(NSString *)subscriptionNumber {
    return [_subscriptionDictionary objectForKey:subscriptionNumber];
}
@end
