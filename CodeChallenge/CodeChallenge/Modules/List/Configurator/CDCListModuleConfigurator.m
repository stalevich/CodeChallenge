//
//  ListConfigurator.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCListModuleConfigurator.h"
#import "CDCListViewController.h"
#import "CDCListRouter.h"
#import "CDCListPresenter.h"
#import "CDCListInteractor.h"

@implementation CDCListModuleConfigurator

- (void)configureModuleForViewInput:(UIViewController *)viewInput {
    if ([viewInput isMemberOfClass:[CDCListViewController class]]) {
        [self configure:(CDCListViewController *)viewInput];
    }
}

- (void)configure:(CDCListViewController *)viewController {
    CDCListRouter *router = [[CDCListRouter alloc] init];
    
    CDCListPresenter *presenter = [[CDCListPresenter alloc] init];
    presenter.view = viewController;
    presenter.router = router;
    
    CDCListInteractor *interactor = [[CDCListInteractor alloc] init];
    interactor.output = presenter;
    
    presenter.interactor = interactor;
    viewController.output = presenter;
}

@end
