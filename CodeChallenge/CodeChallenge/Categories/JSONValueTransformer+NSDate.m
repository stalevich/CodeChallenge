//
//  JSONValueTransformer+NSDate.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "JSONValueTransformer+NSDate.h"

static NSString *const JSONValueTransformerApiDateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

@implementation JSONValueTransformer (NSDate)

- (NSDate *)NSDateFromNSString:(NSString*)string {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:JSONValueTransformerApiDateFormat];
    return [formatter dateFromString:string];
}

- (NSString *)JSONObjectFromNSDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:JSONValueTransformerApiDateFormat];
    return [formatter stringFromDate:date];
}

@end
