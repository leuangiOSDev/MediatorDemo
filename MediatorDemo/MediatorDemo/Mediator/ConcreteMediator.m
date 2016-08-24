//
//  ConcreteMediator.m
//  MediatorDemo
//
//  Created by Leuang on 16/8/24.
//  Copyright © 2016年 com.leuang. All rights reserved.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator

- (void)constactToColleagueAWithMessage:(NSString*)message {
    self.colleagueA.otherColleagueMessage = message;
}

- (void)constactToColleagueBWithMessage:(NSString*)message {
    self.colleagueB.otherColleagueMessage = message;
}

@end
