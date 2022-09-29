//
//  AccountVC.h
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#ifndef AccountVC_h
#define AccountVC_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "AccountPresenter.h"
#import "PresenterToAccountViewProtocol.h"
#import "AccountTableViewCell.h"
#import "AccountEntity.h"
#import "SummaryEntity.h"

NS_ASSUME_NONNULL_BEGIN

@class AccountPresenter;

@interface AccountVC : UIViewController<PresenterToAccountViewProtocol,UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UILabel *accountlbl;
@property (weak, nonatomic) IBOutlet UILabel *accountNumberlbl;
@property (weak, nonatomic) IBOutlet UILabel *availableBalancelbl;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) AccountPresenter *presenter;
@property (strong, nonatomic) SummaryEntity *summaryEntity;


@end

NS_ASSUME_NONNULL_END

#endif /* AccountVC_h */
