//
//  AccountVC.m
//  banking
//
//  Created by Sajid Nawaz on 21/08/2022.
//

#import "AccountVC.h"
#import "MBProgressHUD.h"

@interface AccountVC ()

@property (nonatomic, strong) NSArray* accountList;

@end

@implementation AccountVC

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if(self.summaryEntity != nil){
        self.accountlbl.text = self.summaryEntity.accountLabel;
        self.accountNumberlbl.text = self.summaryEntity.accountNumber;
        self.availableBalancelbl.text = self.summaryEntity.availableBalance;
        [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        [self.presenter startFetchingAccount:self.summaryEntity.transactions];
    }
}

#pragma mark - WireFrameProtocol

- (void)showAccountList:(NSArray *)accountList
{
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        // Do something...
        dispatch_async(dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.view animated:YES];
            self.accountList = accountList;
            if(self.accountList.count > 0){
                AccountEntity *summaryEntity = self.accountList.firstObject;
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
    return [self.accountList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AccountTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    AccountEntity *accountEntity = self.accountList[indexPath.row];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss+HH:mm"];
    NSDate *date  = [dateFormatter dateFromString:accountEntity.date];

    // Convert to new Date Format
    [dateFormatter setDateFormat:@"dd MMM yyyy"];
    cell.datelbl.text = [dateFormatter stringFromDate:date];;
    cell.desclbl.text = accountEntity._description;
    cell.amountlbl.text = accountEntity.amount;
    return cell;
}

@end
