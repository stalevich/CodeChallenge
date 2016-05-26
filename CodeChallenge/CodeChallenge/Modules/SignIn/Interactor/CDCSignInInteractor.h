//
//  SignInInteractor.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDCSignInInteractorInput.h"

@protocol CDCSignInInteractorOutput;

@interface CDCSignInInteractor : NSObject<CDCSignInInteractorInput>

@property (weak, nonatomic) id<CDCSignInInteractorOutput> output;

@end
