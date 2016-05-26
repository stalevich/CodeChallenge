//
//  SignInRouter.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDCSignInRouter.h"
#import "CDCListModuleConfigurator.h"
#import "CDCListViewController.h"
#import "CDCListModuleInput.h"

@implementation CDCSignInRouter

- (void)showListWithItems:(NSArray *)items {
    CDCListViewController *listVC = [[UIStoryboard storyboardWithName:@"Main" bundle:NULL] instantiateViewControllerWithIdentifier:@"List"];
    CDCListModuleConfigurator *configurator = [[CDCListModuleConfigurator alloc] init];
    [configurator configureModuleForViewInput:listVC];
    id<CDCListModuleInput> moduleInput = (id<CDCListModuleInput>)listVC.output;
    moduleInput.items = items;
    
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:listVC];
    [self.viewController presentViewController:nc animated:YES completion:nil];
}

@end
