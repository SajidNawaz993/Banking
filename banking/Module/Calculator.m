//
//  Calculator.m
//  banking
//
//  Created by Sajid Nawaz on 29/08/2022.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

@interface Calculator ()



@end

@implementation Calculator

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    _plusbutton.layer.borderWidth = 1;
    _plusbutton.layer.cornerRadius = 20;
    _plusbutton.layer.borderColor = UIColor.blueColor.CGColor;
    _plusbutton.backgroundColor = UIColor.yellowColor;
    _minusbutton.layer.borderWidth = 1;
    _minusbutton.layer.cornerRadius = 20;
    _minusbutton.layer.borderColor = UIColor.blueColor.CGColor;
    _minusbutton.backgroundColor = UIColor.yellowColor;
}

- (IBAction)addbtntpd:(id)sender {
    
    NSInteger first = [_firstDigitTxtFeild.text integerValue];
    NSInteger second = [_seocndDigitTxtFeild.text integerValue];
    _resultlbl.text = [NSString stringWithFormat: @"%ld", first+second];
}


@end
