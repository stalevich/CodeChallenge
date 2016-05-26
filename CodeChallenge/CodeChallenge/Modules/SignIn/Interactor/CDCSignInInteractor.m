//
//  SignInInteractor.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCSignInInteractor.h"
#import "CDCSignInInteractorOutput.h"
#import "CDCKPIListItem.h"


@implementation CDCSignInInteractor

- (void)signInWithLogin:(NSString *)login password:(NSString *)password {
    __weak typeof(self) weakSelf = self;
    [self.apiService signInAndRequestKPIListWithLogin:login password:password success:^(NSArray<CDCKPIListItem *> *items) {
        [weakSelf.output didSignInWithItems:items];
    } failure:^(NSError *error) {
        [weakSelf.output onError:error.localizedDescription];
    }];
}

@end
