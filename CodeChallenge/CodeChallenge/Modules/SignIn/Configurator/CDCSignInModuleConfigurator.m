//
//  SignInConfigurator.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCSignInModuleConfigurator.h"
#import "CDCSignInViewController.h"
#import "CDCSignInRouter.h"
#import "CDCSignInPresenter.h"
#import "CDCSignInInteractor.h"

@implementation CDCSignInModuleConfigurator

- (void)configureModuleForViewInput:(UIViewController *)viewInput {
    if ([viewInput isMemberOfClass:[CDCSignInViewController class]]) {
        [self configure:(CDCSignInViewController *)viewInput];
    }
}

- (void)configure:(CDCSignInViewController *)viewController {
    CDCSignInRouter *router = [[CDCSignInRouter alloc] init];
    
    CDCSignInPresenter *presenter = [[CDCSignInPresenter alloc] init];
    presenter.view = viewController;
    presenter.router = router;
    
    CDCSignInInteractor *interactor = [[CDCSignInInteractor alloc] init];
    interactor.output = presenter;
    
    presenter.interactor = interactor;
    viewController.output = presenter;
}

@end
