//
//  AccountRouter.m
//  banking
//
//  Created by Sajid Nawaz on 22/08/2022.
//

#import <Foundation/Foundation.h>
#import "AccountRouter.h"
#import "banking-Swift.h"
 
@implementation AccountRouter

+ (AccountVC *)createModule
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"  bundle:nil];
    AccountVC *viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"AccountVC"];
    AccountInteractor *interactor = [[AccountInteractor alloc] init];
    AccountRouter *router = [[AccountRouter alloc] init];
    viewController.presenter = [[AccountPresenter alloc] initWithInterface:viewController interactor:interactor router:router];
    return viewController;
}

@end
