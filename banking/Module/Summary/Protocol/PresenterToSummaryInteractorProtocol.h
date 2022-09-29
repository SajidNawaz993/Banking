//
//  PresenterToSummaryInteractorProtocol.h
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#ifndef PresenterToSummaryInteractorProtocol_h
#define PresenterToSummaryInteractorProtocol_h

#pragma mark - PresenterToSummaryInteractorProtocol

#import "SummaryInteractorToPresenterProtocol.h"

@protocol PresenterToSummaryInteractorProtocol

- (void)fetchSummaryWithSwiftRx;
- (void)fetchSummaryWithAlamofire;
- (void)setPresentProtocol:(id<SummaryInteractorToPresenterProtocol>)setPresentProtocol;

@end

#endif /* PresenterToSummaryInteractorProtocol_h */
