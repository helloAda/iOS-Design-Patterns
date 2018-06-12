//
//  Phone.h
//  DesignPatternFundation
//
//  Created by HelloAda on 2018/6/12.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 单一职责原则 是最简单，也是我们最容易忽略的。
 个人感觉其实类如果负责不是非常多的时候，没必要完全遵循，否则文件和代码量也会增加。
 */
@interface Phone : NSObject

//拨通电话
- (void)dial:(NSString *)phoneNumber;

//通话
- (void)chat:(BOOL)isChat;

//回应
- (void)answer:(BOOL)isAnswer;

//通话完毕
- (void)hangup;


/**
 这个类现在有2种职责 一个是通话协议(dial,hangup)，一个是数据传输(chat,ansewer)
 现在就是说协议的变化 和数据传输的变化都会引起这个类的变化。
 这时候应该分成两个类来或者接口来实现 像下面这样
 */
@end


@interface PhoneDataTransfer : NSObject

//通话
- (void)chat:(BOOL)isChat;

//回应
- (void)answer:(BOOL)isAnswer;

@end

@interface PhoneConnect : NSObject

//拨通电话
- (void)dial:(NSString *)phoneNumber;

//通话完毕
- (void)hangup;

@end
