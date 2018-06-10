//
//  ViewController.m
//  AdapterPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import "ViewController.h"
#import "NormalModel.h"
#import "SpecialModel.h"
#import "BusinessCardView.h"
#import "BusinessCardAdapter.h"
#import "CommonUsedAdapter.h"

/*
 适配器模式：将一个类的接口转换成客户希望的另外一个接口。Adapter 模式使得原本由于接口不兼容而不能一起工作的那些类可以一起工作
 
为了让客户端尽可能的通用,我们使用适配器模式来隔离客户端与外部参数的联系,只让客户端与适配器通信.
本教程实现了适配器模式的对象适配器
如果对面向对象基本原理以及设计模式基本原理不熟悉,本教程会变得难以理解.
 
 
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self commonUsedAdapterExample];
}

- (void)commonUsedAdapterExample {
    
    // 数据源
//    NormalModel *data = [[NormalModel alloc] init];
//    data.name         = @"hello ada";
//    data.lineColor    = [UIColor redColor];
//    data.phoneNumber  = @"123 - 4567 - 8910";
    
    // 数据源
    SpecialModel *data = [[SpecialModel alloc] init];
    data.name          = @"Hello Ada";
    data.colorString   = @"green";
    data.phoneNumber   = @"109 - 8765 - 4321";
    
    // 通用型适配器类(可以加载数据data1或者data2)
    BusinessCardAdapter *adapter = [[CommonUsedAdapter alloc] initWithData:data];
    BusinessCardView *cardView   = [[BusinessCardView alloc] initWithFrame:BUSINESS_FRAME];
    cardView.center              = self.view.center;
    [cardView loadData:adapter];
    
    [self.view addSubview:cardView];
}


@end
