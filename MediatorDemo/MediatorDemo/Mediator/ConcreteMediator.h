//
//  ConcreteMediator.h
//  MediatorDemo
//
//  Created by Leuang on 16/8/24.
//  Copyright © 2016年 com.leuang. All rights reserved.
//

#import "BaseMediator.h"

@interface ConcreteMediator : BaseMediator

// 重写这两个方法
- (void)constactToColleagueAWithMessage:(NSString*)message;
- (void)constactToColleagueBWithMessage:(NSString*)message;

@end
