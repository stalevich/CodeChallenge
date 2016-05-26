//
//  CDCCurrency.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCAmountInAggregationCurrency.h"

@implementation CDCAmountInAggregationCurrency

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"unit": @"unit",
                                                       @"value": @"value"
                                                       }];
}

@end
