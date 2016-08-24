//
//  BaseColleague.h
//  MediatorDemo
//
//  Created by Leuang on 16/8/24.
//  Copyright © 2016年 com.leuang. All rights reserved.
//

#import <Foundation/Foundation.h>

#warning import "BaseMediator.h",不能这样写,否则会出现相互导入,导致错误提示,头文件找不到
@class BaseMediator;

@interface BaseColleague : NSObject

@property (nonatomic, copy) NSString *message; //发出去的信息
@property (nonatomic, copy) NSString *otherColleagueMessage; //接收到的信息

@property (nonatomic, strong) BaseMediator *baseMediator;

- (void)constactLocation;
@end
