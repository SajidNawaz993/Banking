//
//  PresenterToAccountViewProtocol.h
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#ifndef PresenterToAccountViewProtocol_h
#define PresenterToAccountViewProtocol_h

#pragma mark - PresenterToAccountViewProtocol

@protocol PresenterToAccountViewProtocol <NSObject>

- (void)showAccountList:(NSArray *)summaryList;
- (void)showError:(NSError *)error;

@end

#endif /* PresenterToAccountViewProtocol_h */
