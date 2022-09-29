//
//  SummaryVC.h
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#ifndef SummaryVC_h
#define SummaryVC_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "SummaryPresenter.h"
#import "PresenterToSummaryViewProtocol.h"
#import "SummaryTableViewCell.h"
#import "SummaryEntity.h"
#import "AccountVC.h"

NS_ASSUME_NONNULL_BEGIN

@class SummaryPresenter;

@interface SummaryVC : UIViewController<PresenterToSummaryViewProtocol,UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UILabel *accountlbl;
@property (weak, nonatomic) IBOutlet UILabel *accountNumberlbl;
@property (weak, nonatomic) IBOutlet UILabel *availableBalancelbl;
@property (weak, nonatomic) IBOutlet UILabel *currentBalancelbl;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) SummaryPresenter *presenter;

@end

NS_ASSUME_NONNULL_END

#endif /* SummaryVC_h */
