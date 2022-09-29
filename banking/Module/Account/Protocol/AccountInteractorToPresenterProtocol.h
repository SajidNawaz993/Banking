//
//  AccountInteractorToPresenterProtocol.h
//  banking
//
//  Created by Sajid Nawaz on 24/08/2022.
//

#ifndef AccountInteractorToPresenterProtocol_h
#define AccountInteractorToPresenterProtocol_h

#pragma mark - AccountInteractorToPresenterProtocol

@protocol AccountInteractorToPresenterProtocol <NSObject>

-(void)startFetchingAccount:(NSString *)transactionsUrl;
- (void)onSuccessResult:(NSArray *)summaryList;
- (void)onErrorResult:(NSError *)error;

@end

#endif /* AccountInteractorToPresenterProtocol_h */
