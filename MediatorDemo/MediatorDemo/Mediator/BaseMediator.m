//
//  BaseMediator.m
//  MediatorDemo
//
//  Created by Leuang on 16/8/24.
//  Copyright © 2016年 com.leuang. All rights reserved.
//

#import "BaseMediator.h"

@implementation BaseMediator

- (instancetype)initWithColleagueA:(BaseColleague *)colleagueA colleagueB:(BaseColleague *)colleagueB {
    self = [super init];
    if (self) {
        _colleagueA = colleagueA;
        _colleagueB = colleagueB;
    }
    return self;
}

- (void)constactToColleagueAWithMessage:(NSString*)message {
    NSLog(@"由子类来实现");
}

- (void)constactToColleagueBWithMessage:(NSString*)message {
    NSLog(@"由子类来实现");
}

@end
