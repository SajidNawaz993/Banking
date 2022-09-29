//
//  AccountEntity.m
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#import <Foundation/Foundation.h>
#import "AccountEntity.h"

@implementation AccountEntity

- (instancetype)initWithDictionary:(NSDictionary*)dict
{
    self.transactionId = dict[@"transactionId"];
    self.date = dict[@"date"];
    self.cbTransactionTypeCode = dict[@"cbTransactionTypeCode"];
    self._description = dict[@"description"];
    self.amount = [NSString stringWithFormat:@"%@", dict[@"amount"]];
    return self;
}

@end
