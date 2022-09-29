//
//  AccountPresenter.h
//  banking
//
//  Created by Sajid Nawaz on 24/08/2022.
//

#ifndef AccountPresenter_h
#define AccountPresenter_h

#import <Foundation/Foundation.h>
#import "PresenterToAccountViewProtocol.h"
#import "AccountInteractorToPresenterProtocol.h"
#import "PresenterToAccountRouterProtocol.h"
#import "PresenterToAccountInteractorProtocol.h"
#import "AccountVC.h"
#import <UIKit/UIKit.h>

@interface AccountPresenter : NSObject<AccountInteractorToPresenterProtocol>

@property (nonatomic, weak, nullable) id<PresenterToAccountViewProtocol> view;
@property (nonatomic,nullable) id<PresenterToAccountInteractorProtocol> interactor;
@property (nonatomic, weak,nullable) id<PresenterToAccountRouterProtocol> router;

- (instancetype _Nullable)initWithInterface:(id<PresenterToAccountViewProtocol>_Nullable)interface
                       interactor:(id<PresenterToAccountInteractorProtocol> _Nullable)interactor
                           router:(id<PresenterToAccountRouterProtocol> _Nullable)router;

-(void)startFetchingAccount:(NSString *)transactionsUrl;

@end

#endif /* AccountPresenter_h */

