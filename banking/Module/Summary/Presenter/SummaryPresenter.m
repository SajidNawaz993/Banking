//
//  SummaryPresenter.m
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#import <Foundation/Foundation.h>
#import "SummaryPresenter.h"

@implementation SummaryPresenter

- (instancetype)initWithInterface:(id<PresenterToSummaryViewProtocol>)interface
                       interactor:(id<PresenterToSummaryInteractorProtocol>)interactor
                           router:(id<PresenterToSummaryRouterProtocol>)router
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

-(void)startFetchingSummary{
    [self.interactor fetchSummaryWithSwiftRx];
}

#pragma mark - ToDoInteractorOutputProtocol

- (void)onSuccessResult:(NSArray *)summaryList
{
    [self.view showSummaryList:summaryList];
}

- (void)onErrorResult:(NSError *)error
{
    [self.view showError:error];
}

@end
