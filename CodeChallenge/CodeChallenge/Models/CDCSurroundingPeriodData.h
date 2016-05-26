//
//  CDCSurroundingPeriodData.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@class CDCAmountInAggregationCurrency, CDCTimePeriod;

@interface CDCSurroundingPeriodData : JSONModel

@property (strong, nonatomic) CDCTimePeriod *timePeriod;
@property (strong, nonatomic) CDCAmountInAggregationCurrency *minValue;
@property (strong, nonatomic) CDCAmountInAggregationCurrency *avgValue;
@property (strong, nonatomic) CDCAmountInAggregationCurrency *maxValue;

@end
