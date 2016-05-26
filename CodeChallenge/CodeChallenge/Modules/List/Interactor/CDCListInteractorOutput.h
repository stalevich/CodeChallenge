//
//  SignInInteractorOutput.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CDCKPIListItem;

@protocol CDCListInteractorOutput <NSObject>

- (void)didLogout;
- (void)didRequestItems:(NSArray<CDCKPIListItem *> *)items;
- (void)onError:(NSString *)error;

@end
