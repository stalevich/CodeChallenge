//
//  CDCTimePeriod+StringFormatting.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCTimePeriod.h"

@interface CDCTimePeriod (StringFormatting)

- (NSString *)timePeriodStrignWithDateFormatter:(NSDateFormatter *)dateFromatter;

@end
