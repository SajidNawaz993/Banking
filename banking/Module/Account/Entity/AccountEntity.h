//
//  AccountEntity.h
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#ifndef AccountEntity_h
#define AccountEntity_h

#import <Foundation/Foundation.h>

@interface AccountEntity : NSObject

@property (nonatomic) NSString *transactionId;
@property (nonatomic) NSString *date;
@property (nonatomic) NSString *cbTransactionTypeCode;
@property (nonatomic) NSString *_description;
@property (nonatomic) NSString *amount;

- (instancetype)initWithDictionary:(NSDictionary*)dict;
@end


#endif /* AccountEntity_h */

