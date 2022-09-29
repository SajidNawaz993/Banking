//
//  SummaryInteractorToPresenterProtocol.h
//  banking
//
//  Created by Sajid Nawaz on 24/08/2022.
//

#ifndef SummaryInteractorToPresenterProtocol_h
#define SummaryInteractorToPresenterProtocol_h

#pragma mark - SummaryInteractorToPresenterProtocol

@protocol SummaryInteractorToPresenterProtocol <NSObject>

-(void)startFetchingSummary;
- (void)onSuccessResult:(NSArray *)summaryList;
- (void)onErrorResult:(NSError *)error;

@end

#endif /* SummaryInteractorToPresenterProtocol_h */
