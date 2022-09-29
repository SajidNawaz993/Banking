//
//  PresenterToummaryRouterProtocol.h
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#ifndef PresenterToummaryRouterProtocol_h
#define PresenterToummaryRouterProtocol_h

#import "SummaryVC.h"

#pragma mark - PresenterToSummaryRouterProtocol

@class SummaryVC;

@protocol PresenterToSummaryRouterProtocol <NSObject>

+ (SummaryVC *)createModule;

@end

#endif /* PresenterToRouterProtocol_h */
