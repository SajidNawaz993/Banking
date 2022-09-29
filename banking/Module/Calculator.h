//
//  Calculator.h
//  banking
//
//  Created by Sajid Nawaz on 29/08/2022.
//

#ifndef Calculator_h
#define Calculator_h

#import <UIKit/UIKit.h>

@interface Calculator : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstDigitTxtFeild;
@property (weak, nonatomic) IBOutlet UITextField *seocndDigitTxtFeild;
@property (weak, nonatomic) IBOutlet UILabel *resultlbl;
@property (weak, nonatomic) IBOutlet UIButton *plusbutton;
@property (weak, nonatomic) IBOutlet UIButton *minusbutton;

@end

#endif /* Calculator_h */
