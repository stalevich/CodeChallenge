//
//  CDCTimePeriod.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface CDCTimePeriod : JSONModel

@property (strong, nonatomic) NSDate *periodEndDate;
@property (strong, nonatomic) NSNumber *sliceUnitCount;

@end
