//
//  SignInInteractor.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDCListInteractorInput.h"

@protocol CDCListInteractorOutput;

@interface CDCListInteractor : NSObject<CDCListInteractorInput>

@property (weak, nonatomic) id<CDCListInteractorOutput> output;

@end
