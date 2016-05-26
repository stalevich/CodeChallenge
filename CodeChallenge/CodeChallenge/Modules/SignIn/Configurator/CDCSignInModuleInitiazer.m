//
//  SignInModuleInitiazer.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCSignInModuleInitiazer.h"
#import "CDCSignInModuleConfigurator.h"

@implementation CDCSignInModuleInitiazer

- (void)awakeFromNib {
    CDCSignInModuleConfigurator *configurator = [[CDCSignInModuleConfigurator alloc] init];
    [configurator configureModuleForViewInput:self.viewController];
}

@end
