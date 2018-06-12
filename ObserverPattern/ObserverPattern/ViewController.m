//
//  ViewController.m
//  ObserverPattern
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "ViewController.h"
#import "SubscriptionServiceCenter.h"

static NSString *SCIENCE = @"science";

@interface ViewController ()<SubscriptionServiceCenterProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建订阅号
    [SubscriptionServiceCenter createSubscriptionNumber:SCIENCE];
    
    //添加订阅的用户到指定的刊物
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:SCIENCE];
    
    //发送消息
    [SubscriptionServiceCenter sendMessage:@"V1.0" toSubscriptionNumber:SCIENCE];
}

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {
    NSLog(@"刊物号码%@，刊物信息%@",subscriptionNumber, message);
}
@end
