//
//  CDCTimePeriod+StringFormatting.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCTimePeriod+StringFormatting.h"

static NSTimeInterval const CDCTimePeriodSecondsInDay = 24 * 60 * 60;

@implementation CDCTimePeriod (StringFormatting)

- (NSString *)timePeriodStrignWithDateFormatter:(NSDateFormatter *)dateFromatter {
    NSDate *periodStart = [self.periodEndDate dateByAddingTimeInterval: -[self.sliceUnitCount integerValue] * CDCTimePeriodSecondsInDay];
    return [NSString stringWithFormat:@"%@ - %@", [dateFromatter stringFromDate:periodStart], [dateFromatter stringFromDate:self.periodEndDate]];;
}

@end
