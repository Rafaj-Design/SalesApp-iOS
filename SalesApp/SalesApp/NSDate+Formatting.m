//
//  NSDate+Formatting.m
//  SalesApp
//
//  Created by Ondrej Rafaj on 18/07/2014.
//  Copyright (c) 2014 Ridiculous Innovations. All rights reserved.
//

#import "NSDate+Formatting.h"
#import "SALang.h"


#define SECOND              1
#define MINUTE              (SECOND * 60)
#define HOUR                (MINUTE * 60)
#define DAY                 (HOUR   * 24)
#define WEEK                (DAY    * 7)
#define MONTH               (DAY    * 31)
#define YEAR                (DAY    * 365.24)


@implementation NSDate (Formatting)

+ (NSString *)mysqlDatetimeFormattedAsTimeAgo:(NSString *)mysqlDatetime {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [formatter dateFromString:mysqlDatetime];
    return [date formattedAsTimeAgo];
}

- (NSString *)formattedAsTimeAgo {
    NSDate *now = [NSDate date];
    NSTimeInterval secondsSince = -(int)[self timeIntervalSinceDate:now];
    
    // Should never hit this but handle the future case
    if (secondsSince < 0) {
        return SALangGet(@"In The Future");
    }
    
    // < 1 minute = "Just now"
    if (secondsSince < MINUTE) {
        return SALangGet(@"Just now");
    }
    
    // < 1 hour = "x minutes ago"
    if (secondsSince < HOUR) {
        return [self formatMinutesAgo:secondsSince];
    }
    
    // Today = "x hours ago"
    if ([self isSameDayAs:now]) {
        return [self formatAsToday:secondsSince];
    }
    
    // Yesterday = "Yesterday at 1:28 PM"
    if ([self isYesterday:now]) {
        return [self formatAsYesterday];
    }
    
    // < Last 7 days = "Friday at 1:48 AM"
    if ([self isLastWeek:secondsSince]) {
        return [self formatAsLastWeek];
    }
    
    // < Last 30 days = "March 30 at 1:14 PM"
    if ([self isLastMonth:secondsSince]) {
        return [self formatAsLastMonth];
    }
    
    // < 1 year = "September 15"
    if ([self isLastYear:secondsSince]) {
        return [self formatAsLastYear];
    }
    
    // Anything else = "July 18, 2014"
    return [self formatAsOther];
}

#pragma mark Date comparison methods

- (BOOL)isSameDayAs:(NSDate *)comparisonDate {
    NSDateFormatter *dateComparisonFormatter = [[NSDateFormatter alloc] init];
    [dateComparisonFormatter setDateFormat:@"yyyy-MM-dd"];
    return [[dateComparisonFormatter stringFromDate:self] isEqualToString:[dateComparisonFormatter stringFromDate:comparisonDate]];
}

- (BOOL)isYesterday:(NSDate *)now {
    return [self isSameDayAs:[now dateBySubtractingDays:1]];
}

- (NSDate *) dateBySubtractingDays: (NSInteger) numDays {
	NSTimeInterval aTimeInterval = [self timeIntervalSinceReferenceDate] + DAY * -numDays;
	NSDate *newDate = [NSDate dateWithTimeIntervalSinceReferenceDate:aTimeInterval];
	return newDate;
}


// TODO: make this more precise (1 week ago, if it is 7 days ago check the exact date)
- (BOOL)isLastWeek:(NSTimeInterval)secondsSince {
    return secondsSince < WEEK;
}

- (BOOL)isLastMonth:(NSTimeInterval)secondsSince {
    return secondsSince < MONTH;
}

- (BOOL)isLastYear:(NSTimeInterval)secondsSince {
    return secondsSince < YEAR;
}

#pragma mark Formatting methods

// < 1 hour = "x minutes ago"
- (NSString *)formatMinutesAgo:(NSTimeInterval)secondsSince {
    // Convert to minutes
    int minutesSince = (int)secondsSince / MINUTE;
    
    // Handle Plural
    if (minutesSince == 1) {
        return SALangGet(@"1 minute ago");
    }
    else {
        return [NSString stringWithFormat:@"%d minutes ago", minutesSince];
    }
}

// Today = "x hours ago"
- (NSString *)formatAsToday:(NSTimeInterval)secondsSince {
    int hoursSince = (int)secondsSince / HOUR;
    
    if (hoursSince == 1) {
        return SALangGet(@"1 hour ago");
    }
    else {
        return [NSString stringWithFormat:@"%d hours ago", hoursSince];
    }
}

// Yesterday = "Yesterday at 1:28 PM"
- (NSString *)formatAsYesterday {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"h:mm a"];
    return [NSString stringWithFormat:@"Yesterday at %@", [dateFormatter stringFromDate:self]];
}

// < Last 7 days = "Friday at 1:48 AM"
- (NSString *)formatAsLastWeek {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE 'at' h:mm a"];
    return [dateFormatter stringFromDate:self];
}

// < Last 30 days = "March 30 at 1:14 PM"
- (NSString *)formatAsLastMonth {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMMM d 'at' h:mm a"];
    return [dateFormatter stringFromDate:self];
}

// < 1 year = "September 15"
- (NSString *)formatAsLastYear {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMMM d"];
    return [dateFormatter stringFromDate:self];
}

// Anything else = "September 9, 2011"
- (NSString *)formatAsOther {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"LLLL d, yyyy"];
    return [dateFormatter stringFromDate:self];
}


@end
