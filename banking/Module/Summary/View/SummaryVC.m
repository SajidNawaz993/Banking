//
//  SummaryVC.m
//  banking
//
//  Created by Sajid Nawaz on 21/08/2022.
//

#import "SummaryVC.h"
#import "MBProgressHUD.h"

@interface SummaryVC ()

@property (nonatomic, strong) NSArray* summaryList;

@end

@implementation SummaryVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [self.presenter startFetchingSummary];
}

-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

#pragma mark - WireFrameProtocol

- (void)showSummaryList:(NSArray *)summaryList
{
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        // Do something...
        dispatch_async(dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.view animated:YES];
            self.summaryList = summaryList;
            if(self.summaryList.count > 0){
                SummaryEntity *summaryEntity = self.summaryList.firstObject;
                self.accountlbl.text = summaryEntity.accountLabel;
                self.accountNumberlbl.text = summaryEntity.accountNumber;
                self.availableBalancelbl.text = summaryEntity.availableBalance;
                self.currentBalancelbl.text = summaryEntity.currentBalance;
                AccountVC *accountVC = self.tabBarController.viewControllers[1];
                accountVC.summaryEntity = summaryEntity;
            }
            [self.tableView reloadData];
        });
    });
}


- (void)showError:(NSError *)error
{
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        // Do something...
        dispatch_async(dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.view animated:YES];
        });
    });
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle : @"Alert!"
                                                                       message : error.description
                                                                preferredStyle : UIAlertControllerStyleAlert];

       UIAlertAction * ok = [UIAlertAction
                             actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             { }];

       [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark - UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.summaryList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SummaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    SummaryEntity *summaryEntity = self.summaryList[indexPath.row];
    cell.accountlbl.text = summaryEntity.accountLabel;
    cell.accountNumberlbl.text = summaryEntity.accountNumber;
    cell.availableBalancelbl.text = summaryEntity.availableBalance;
    cell.currentBalancelbl.text = summaryEntity.currentBalance;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SummaryEntity *summaryEntity = self.summaryList[indexPath.row];
    self.accountlbl.text = summaryEntity.accountLabel;
    self.accountNumberlbl.text = summaryEntity.accountNumber;
    self.availableBalancelbl.text = summaryEntity.availableBalance;
    self.currentBalancelbl.text = summaryEntity.currentBalance;
    AccountVC *accountVC = self.tabBarController.viewControllers[1];
    accountVC.summaryEntity = summaryEntity;
    [self.tabBarController setSelectedIndex:1];
}

@end
