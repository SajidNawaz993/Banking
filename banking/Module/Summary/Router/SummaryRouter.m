//
//  SummaryRouter.m
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#import <Foundation/Foundation.h>
#import "SummaryRouter.h"
#import "banking-Swift.h"
 
@implementation SummaryRouter

+ (SummaryVC *)createModule
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"  bundle:nil];
    SummaryVC *viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"SummaryVC"];
    SummaryInteractor *interactor = [[SummaryInteractor alloc] init];
    SummaryRouter *router = [[SummaryRouter alloc] init];
    viewController.presenter = [[SummaryPresenter alloc] initWithInterface:viewController interactor:interactor router:router];
    return viewController;
}

@end
