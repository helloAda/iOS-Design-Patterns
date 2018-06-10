//
//  BusinessCardView.h
//  AdapterPattern
//
//  Created by 黄铭达 on 2018/6/10.
//  Copyright © 2018年 黄铭达. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BusinessCardAdapterProtocol.h"
#define  BUSINESS_FRAME  CGRectMake(0, 0, 200, 130)

@interface BusinessCardView : UIView

//加载数据 (实现了BusinessCardAdapterProtocol协议的数据)
- (void)loadData:(id <BusinessCardAdapterProtocol>)data;

@end
