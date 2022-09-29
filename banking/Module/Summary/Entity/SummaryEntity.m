//
//  SummaryEntity.m
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#import <Foundation/Foundation.h>
#import "SummaryEntity.h"

@implementation SummaryEntity

- (instancetype)initWithDictionary:(NSDictionary*)dict
{
    self.accountNumber = dict[@"accountNumber"];
    self.accountBsb = dict[@"accountBsb"];
    self.accountLabel = dict[@"accountLabel"];
    self.currentBalance = dict[@"currentBalance"];
    self.availableBalance = dict[@"availableBalance"];
    self.transactions = dict[@"transactions"];
    return self;
}

@end
