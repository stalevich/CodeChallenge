//
//  SignInRouter.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDCSignInRouterInput.h"

@interface CDCSignInRouter : NSObject<CDCSignInRouterInput>

@property (weak, nonatomic) UIViewController *viewController;

@end
