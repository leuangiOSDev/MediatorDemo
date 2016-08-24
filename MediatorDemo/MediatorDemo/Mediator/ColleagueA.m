//
//  ColleagueA.m
//  MediatorDemo
//
//  Created by Leuang on 16/8/24.
//  Copyright © 2016年 com.leuang. All rights reserved.
//

#import "ColleagueA.h"
#import "BaseMediator.h"

@implementation ColleagueA

- (void)constactLocation {
    [self.baseMediator constactToColleagueBWithMessage:self.message];
}

@end
