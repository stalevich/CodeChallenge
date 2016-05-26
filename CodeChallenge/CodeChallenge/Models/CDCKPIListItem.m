//
//  CDCKPIListItem.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCKPIListItem.h"

@implementation CDCKPIListItem

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"label": @"label",
                                                       @"kpiValue.amountInAggregationCurrency": @"value"
                                                       }];
}

@end
