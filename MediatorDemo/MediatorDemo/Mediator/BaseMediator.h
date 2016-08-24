//
//  BaseMediator.h
//  MediatorDemo
//
//  Created by Leuang on 16/8/24.
//  Copyright © 2016年 com.leuang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseColleague.h"

@interface BaseMediator : NSObject

@property (nonatomic, weak) BaseColleague *colleagueA;
@property (nonatomic, weak) BaseColleague *colleagueB;

- (instancetype)initWithColleagueA:(BaseColleague *)colleagueA colleagueB:(BaseColleague *)colleagueB;

- (void)constactToColleagueAWithMessage:(NSString*)message;
- (void)constactToColleagueBWithMessage:(NSString*)message;

@end
