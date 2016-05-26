//
//  CDCApiService.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCApiService.h"
#import "CDCKPIListItem.h"

@interface CDCApiService()

@property (strong, nonatomic) CDCSessionManager *sessionManager;

@end

@implementation CDCApiService

+ (instancetype)sharedService {
    static CDCApiService* instance = nil;
    static dispatch_once_t predicate;
    dispatch_once( &predicate, ^{
        instance = [[self alloc] init];
    } );
    return instance;
}

- (instancetype)init {
    if (self = [super init]) {
        _sessionManager = [[CDCSessionManager alloc] initWithBaseURL:[NSURL URLWithString:@"https://opx.cfapps.io/"]];
    }
    return self;
}

- (NSURLSessionDataTask *)signInAndRequestKPIListWithLogin:(NSString *)login
                                                  password:(NSString *)password
                                                   success:(void (^)(NSArray<CDCKPIListItem *> *))success
                                                   failure:(void (^)(NSError *error))failure {
    [self.sessionManager.requestSerializer setAuthorizationHeaderFieldWithUsername:login password:password];
    return [self requestKPIListWithSuccess:success failure:failure];
}

- (NSURLSessionDataTask *)requestKPIListWithSuccess:(void (^)(NSArray<CDCKPIListItem *> *))success
                                            failure:(void (^)(NSError *error))failure {
    return [self.sessionManager GET:@"dashboarditems"
                         parameters:nil
                           progress:nil
                            success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                                NSError *error = nil;
                                NSArray *items = [CDCKPIListItem arrayOfModelsFromDictionaries:responseObject error:&error];
                                if (error) {
                                    failure(error);
                                } else {
                                    success(items);
                                }
                            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                                failure(error);
                            }];
}

- (void)logout {
    [self.sessionManager.requestSerializer clearAuthorizationHeader];
}

@end
