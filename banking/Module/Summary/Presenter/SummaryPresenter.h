//
//  SummaryPresenter.h
//  banking
//
//  Created by Sajid Nawaz on 24/08/2022.
//

#ifndef SummaryPresenter_h
#define SummaryPresenter_h

#import <Foundation/Foundation.h>
#import "PresenterToSummaryViewProtocol.h"
#import "SummaryInteractorToPresenterProtocol.h"
#import "PresenterToSummaryRouterProtocol.h"
#import "PresenterToSummaryInteractorProtocol.h"
#import "SummaryVC.h"
#import <UIKit/UIKit.h>

@interface SummaryPresenter : NSObject<SummaryInteractorToPresenterProtocol>

@property (nonatomic, weak, nullable) id<PresenterToSummaryViewProtocol> view;
@property (nonatomic,nullable) id<PresenterToSummaryInteractorProtocol> interactor;
@property (nonatomic, weak,nullable) id<PresenterToSummaryRouterProtocol> router;

- (instancetype _Nullable)initWithInterface:(id<PresenterToSummaryViewProtocol>_Nullable)interface
                       interactor:(id<PresenterToSummaryInteractorProtocol> _Nullable)interactor
                           router:(id<PresenterToSummaryRouterProtocol> _Nullable)router;

-(void)startFetchingSummary;

@end

#endif /* SummaryPresenter_h */

