//
//  ListModuleInitiazer.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCListModuleInitiazer.h"
#import "CDCListModuleConfigurator.h"

@implementation CDCListModuleInitiazer

- (void)awakeFromNib {
    CDCListModuleConfigurator *configurator = [[CDCListModuleConfigurator alloc] init];
    [configurator configureModuleForViewInput:self.viewController];
}

@end
