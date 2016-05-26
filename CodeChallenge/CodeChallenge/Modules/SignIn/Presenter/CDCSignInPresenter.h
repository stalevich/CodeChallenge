//
//  SignInPresenter.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDCSignInModuleInput.h"
#import "CDCSignInViewOutput.h"
#import "CDCSignInInteractorOutput.h"

@protocol CDCSignInViewInput, CDCSignInInteractorInput, CDCSignInRouterInput;

@interface CDCSignInPresenter : NSObject<CDCSignInModuleInput, CDCSignInViewOutput, CDCSignInInteractorOutput>

@property (weak, nonatomic) id<CDCSignInViewInput> view;
@property (strong, nonatomic) id<CDCSignInInteractorInput> interactor;
@property (strong, nonatomic) id<CDCSignInRouterInput> router;

@end
