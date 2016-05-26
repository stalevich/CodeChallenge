//
//  CDCApiService.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDCSessionManager.h"
@class CDCKPIListItem;

@interface CDCApiService : NSObject

+ (instancetype)sharedService;

- (void)logout;

- (NSURLSessionDataTask *)signInAndRequestKPIListWithLogin:(NSString *)login
                                                  password:(NSString *)password
                                                   success:(void (^)(NSArray<CDCKPIListItem *> *))success
                                                   failure:(void (^)(NSError *error))failure;

- (NSURLSessionDataTask *)requestKPIListWithSuccess:(void (^)(NSArray<CDCKPIListItem *> *))success
                                            failure:(void (^)(NSError *error))failure;

@end
