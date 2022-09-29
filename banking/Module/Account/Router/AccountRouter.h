//
//  AccountRouter.h
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#ifndef AccountRouter_h
#define AccountRouter_h

#import <Foundation/Foundation.h>
#import "AccountProtocol.h"
#import "AccountVC.h"
#import "AccountPresenter.h"

@interface AccountRouter : NSObject<PresenterToAccountRouterProtocol>

+ (AccountVC *)createModule;
@end

#endif /* AccountRouter_h */
