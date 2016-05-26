//
//  CDCSurroundingPeriodData.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCSurroundingPeriodData.h"

@implementation CDCSurroundingPeriodData

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"timePeriod": @"timePeriod",
                                                       @"minValue.amountInAggregationCurrency": @"minValue",
                                                       @"avgValue.amountInAggregationCurrency": @"avgValue",
                                                       @"maxValue.amountInAggregationCurrency": @"maxValue"
                                                       }];
}

@end
