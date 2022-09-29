//
//  PresenterToSummaryViewProtocol.h
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#ifndef PresenterToSummaryViewProtocol_h
#define PresenterToSummaryViewProtocol_h

#pragma mark - PresenterToSummaryViewProtocol

@protocol PresenterToSummaryViewProtocol <NSObject>

- (void)showSummaryList:(NSArray *)summaryList;
- (void)showError:(NSError *)error;

@end

#endif /* PresenterToSummaryViewProtocol_h */
