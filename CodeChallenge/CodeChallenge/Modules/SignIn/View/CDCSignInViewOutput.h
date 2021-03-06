//
//  SignInViewOutput.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CDCSignInViewOutput <NSObject>

- (void)viewIsReady;
- (void)onSignInWithLogin:(NSString *)login password:(NSString *)password;

@end
