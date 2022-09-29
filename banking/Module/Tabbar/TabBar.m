//
//  CustomTabBarController.m
//  banking
//
//  Created by Sajid Nawaz on 25/08/2022.
//

#import <Foundation/Foundation.h>
#import "TabBar.h"
#import "SummaryRouter.h"
#import "SummaryPresenter.h"
#import "AccountRouter.h"

@implementation TabBar

    - (void)viewDidLoad

        {
            
            // Do any additional setup after loading the view.
        //    self.navigationItem.hidesBackButton=YES;

            self.title = @"Chat Home Page";

          

            SummaryVC *firstViewController = (SummaryVC *) [SummaryRouter createModule];
            AccountVC *secondViewController = (AccountVC *) [AccountRouter createModule];
            UIViewController *thirdViewController = [[UIViewController alloc] init];

            self.tabbarcontroller = [[UITabBarController alloc]init];

            self.viewControllers = [NSArray arrayWithObjects:firstViewController,secondViewController,thirdViewController, nil];

            //self.navigationController.navigationBar.frame.size.height;
            //UITabBar *tabBar = self.tabBarController.tabBar;
            //CGFloat topBarOffset = self.topLayoutGuide.length;
            self.tabBar.frame =CGRectMake(0,44,self.view.frame.size.width,50);

            UITabBarItem *item0 = [self.tabBar.items objectAtIndex:0];
            UITabBarItem *item1 = [self.tabBar.items objectAtIndex:1];
            UITabBarItem *item2 = [self.tabBar.items objectAtIndex:2];

            item0.title = @"Summary";
            item1.title = @"Accounts";
            item2.title = @"Payments";
            
            item0.image = [UIImage imageNamed:@"ic_summary.png"];
            item1.image = [UIImage imageNamed:@"ic_account.png"];
            item2.image = [UIImage imageNamed:@"ic_payment.png"];
            
        }

@end
