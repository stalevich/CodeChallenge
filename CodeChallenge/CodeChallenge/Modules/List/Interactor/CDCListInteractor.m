//
//  SignInInteractor.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCListInteractor.h"
#import "CDCListInteractorOutput.h"

@implementation CDCListInteractor

- (void)logout {
    [self.apiService logout];
    [self.output didLogout];
}

- (void)requsetItems {
    __weak typeof(self) weakSelf = self;
    [self.apiService requestKPIListWithSuccess:^(NSArray<CDCKPIListItem *> *items) {
        [weakSelf.output didRequestItems:items];
    } failure:^(NSError *error) {
        [weakSelf.output onError:error.localizedDescription];
    }];
}

@end
