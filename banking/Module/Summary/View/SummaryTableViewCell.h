//
//  SummaryTableViewCell.h
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#ifndef SummaryTableViewCell_h
#define SummaryTableViewCell_h


#endif /* SummaryTableViewCell_h */

#import <UIKit/UIKit.h>

@interface SummaryTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *accountlbl;
@property (weak, nonatomic) IBOutlet UILabel *accountNumberlbl;
@property (weak, nonatomic) IBOutlet UILabel *availableBalancelbl;
@property (weak, nonatomic) IBOutlet UILabel *currentBalancelbl;


@end
