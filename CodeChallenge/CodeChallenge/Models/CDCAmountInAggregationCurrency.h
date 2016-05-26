//
//  CDCCurrency.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface CDCAmountInAggregationCurrency : JSONModel

@property (copy, nonatomic) NSString *unit;
@property (strong, nonatomic) NSNumber *value;

@end
