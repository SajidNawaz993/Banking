//
//  AccountPresenter.m
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#import <Foundation/Foundation.h>
#import "AccountPresenter.h"

@implementation AccountPresenter

- (instancetype)initWithInterface:(id<PresenterToAccountViewProtocol>)interface
                       interactor:(id<PresenterToAccountInteractorProtocol>)interactor
                           router:(id<PresenterToAccountRouterProtocol>)router
{
    if (self = [super init])
    {
        self.view = interface;
        self.interactor = interactor;
        self.router = router;
        [self.interactor setPresentProtocol:self];
    }
    return self;
}

-(void)startFetchingAccount:(NSString *)transactionsUrl{
    [self.interactor fetchAccountWithSwiftRx:transactionsUrl];
}

#pragma mark - ToDoInteractorOutputProtocol

- (void)onSuccessResult:(NSArray *)summaryList
{
    [self.view showAccountList:summaryList];
}

- (void)onErrorResult:(NSError *)error
{
    [self.view showError:error];
}

@end
