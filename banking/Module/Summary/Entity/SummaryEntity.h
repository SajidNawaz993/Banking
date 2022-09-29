//
//  SummaryEntity.h
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#ifndef SummaryEntity_h
#define SummaryEntity_h

#import <Foundation/Foundation.h>

@interface SummaryEntity : NSObject

@property (nonatomic) NSString *accountNumber;
@property (nonatomic) NSString *accountBsb;
@property (nonatomic) NSString *accountLabel;
@property (nonatomic) NSString *currentBalance;
@property (nonatomic) NSString *availableBalance;
@property (nonatomic) NSString *transactions;

- (instancetype)initWithDictionary:(NSDictionary*)dict;
@end


#endif /* SummaryEntity_h */

