//
//  ColleagueB.m
//  MediatorDemo
//
//  Created by Leuang on 16/8/24.
//  Copyright © 2016年 com.leuang. All rights reserved.
//

#import "ColleagueB.h"
#import "BaseMediator.h"

@implementation ColleagueB

- (void)constactLocation {
    [self.baseMediator constactToColleagueAWithMessage:self.message];
}

@end
