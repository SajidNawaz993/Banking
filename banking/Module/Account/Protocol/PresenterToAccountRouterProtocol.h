//
//  PresenterToAccountRouterProtocol.h
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#ifndef PresenterToAccountRouterProtocol_h
#define PresenterToAccountRouterProtocol_h

#import "AccountVC.h"

#pragma mark - PresenterToAccountRouterProtocol

@class AccountVC;

@protocol PresenterToAccountRouterProtocol <NSObject>

+ (AccountVC *)createModule;

@end

#endif /* PresenterToRouterProtocol_h */
