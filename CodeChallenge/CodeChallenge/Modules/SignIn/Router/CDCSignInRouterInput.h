//
//  SignInRouterInput.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CDCKPIListItem;

@protocol CDCSignInRouterInput <NSObject>

- (void)showListWithItems:(NSArray<CDCKPIListItem *> *)items;

@end
