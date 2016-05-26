//
//  CDCTimePeriod.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCTimePeriod.h"

@implementation CDCTimePeriod

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"periodEnd": @"periodEndDate",
                                                       @"sliceUnitCount": @"sliceUnitCount"
                                                       }];
}

@end
