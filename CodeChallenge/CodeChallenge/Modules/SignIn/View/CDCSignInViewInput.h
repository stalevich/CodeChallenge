//
//  SignInViewInput.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CDCSignInViewInput <NSObject>

- (void)setProgressVisible:(BOOL)visible;
- (void)showError:(NSString *)error;

@end
