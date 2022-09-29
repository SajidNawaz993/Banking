//
//  SummaryRouter.h
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#ifndef SummaryRouter_h
#define SummaryRouter_h

#import <Foundation/Foundation.h>
#import "SummaryProtocol.h"
#import "SummaryVC.h"
#import "SummaryPresenter.h"

@interface SummaryRouter : NSObject<PresenterToSummaryRouterProtocol>

+ (SummaryVC *)createModule;
@end

#endif /* SummaryRouter_h */
