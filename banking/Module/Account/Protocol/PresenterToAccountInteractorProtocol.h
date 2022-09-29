//
//  PresenterToAccountInteractorProtocol.h
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#ifndef PresenterToAccountInteractorProtocol_h
#define PresenterToAccountInteractorProtocol_h

#pragma mark - PresenterToAccountInteractorProtocol

#import "AccountInteractorToPresenterProtocol.h"

@protocol PresenterToAccountInteractorProtocol

- (void)fetchAccountWithSwiftRx:(NSString *)transactionsUrl;
- (void)fetchAccountWithAlamofire:(NSString *)transactionsUrl;
- (void)setPresentProtocol:(id<AccountInteractorToPresenterProtocol>)setPresentProtocol;

@end

#endif /* PresenterToAccountInteractorProtocol_h */
