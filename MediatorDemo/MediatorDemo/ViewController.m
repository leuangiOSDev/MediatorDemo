//
//  ViewController.m
//  MediatorDemo
//
//  Created by Leuang on 16/8/24.
//  Copyright © 2016年 com.leuang. All rights reserved.
//

#import "ViewController.h"
#import "BaseColleague.h"
#import "ColleagueA.h"
#import "ColleagueB.h"
#import "BaseMediator.h"
#import "ConcreteMediator.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *toColleagueBTF;
@property (weak, nonatomic) IBOutlet UITextField *toColleagueATF;
@property (weak, nonatomic) IBOutlet UILabel *messageA;
@property (weak, nonatomic) IBOutlet UILabel *messageB;
- (IBAction)aSend:(id)sender;
- (IBAction)bSend:(id)sender;

@end

@implementation ViewController
{
    BaseColleague *colleagueA;
    ColleagueB *colleagueB;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    colleagueA = [[ColleagueA alloc] init];
    colleagueB = [[ColleagueB alloc] init];
    BaseMediator *baseMediator = [[ConcreteMediator alloc] initWithColleagueA:colleagueA colleagueB:colleagueB];
    colleagueA.baseMediator = baseMediator;
    colleagueB.baseMediator = baseMediator;
}

- (IBAction)aSend:(id)sender {
    NSString *toColleagueBTFStr = self.toColleagueBTF.text;
    if (toColleagueBTFStr.length <= 0) {
        return;
    }
    colleagueA.message = toColleagueBTFStr;
    [colleagueA constactLocation];
    self.messageB.text = [NSString stringWithFormat:@"收到的信息:%@",colleagueB.otherColleagueMessage];
}

- (IBAction)bSend:(id)sender {
    NSString *toColleagueATFStr = self.toColleagueATF.text;
    if (toColleagueATFStr.length <= 0) {
        return;
    }
    colleagueB.message = toColleagueATFStr;
    [colleagueB constactLocation];
    self.messageA.text = [NSString stringWithFormat:@"收到的信息:%@",colleagueA.otherColleagueMessage];
}
@end
