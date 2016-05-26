//
//  CDCKPIListItem.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "CDCAmountInAggregationCurrency.h"
#import "CDCSurroundingPeriodData.h"

@interface CDCKPIListItem : JSONModel

@property (copy, nonatomic) NSString *label;
@property (strong, nonatomic) CDCAmountInAggregationCurrency *value;
@property (strong, nonatomic) CDCSurroundingPeriodData *surroundingPeriodData;

@end
