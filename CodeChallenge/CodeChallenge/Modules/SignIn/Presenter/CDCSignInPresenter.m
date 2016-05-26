//
//  SignInPresenter.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCSignInPresenter.h"
#import "CDCSignInViewInput.h"
#import "CDCSignInInteractorInput.h"
#import "CDCSignInRouterInput.h"

@implementation CDCSignInPresenter

- (void)viewIsReady {
    
}

#pragma mark CDCSignInModuleInput

- (void)onSignInWithLogin:(NSString *)login password:(NSString *)password {
    [self.view setProgressVisible:YES];
    [self.interactor signInWithLogin:login password:password];
}

#pragma mark CDCSignInInteractorOutput

- (void)didSignInWithItems:(NSArray<CDCKPIListItem *> *)items {
    [self.view setProgressVisible:NO];
    [self.router showListWithItems:items];
}

- (void)onError:(NSString *)error {
    [self.view setProgressVisible:NO];
    [self.view showError:error];
}

@end
