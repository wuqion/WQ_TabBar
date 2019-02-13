//
//  NSDate+WQ_Extension.m
//  ChildrenPalace
//
//  Created by 吴琼 on 2019/1/17.
//  Copyright © 2018 吴琼. All rights reserved.
//

#import "NSDate+WQ_Extension.h"

@implementation NSDate (WQ_Extension)

- (NSUInteger)wq_getComponent:(NSCalendarUnit)component {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    return [calendar component:component fromDate:self];
}

- (NSString *)wq_getCurrentYear {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    formatter.dateFormat = @"yyyy";
    
    NSString *dateStr = [formatter stringFromDate:self];
    return dateStr;
}

- (NSUInteger)wq_getYear {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    return [calendar component:NSCalendarUnitYear fromDate:self];
}

- (NSUInteger)wq_getMonth {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    return [calendar component:NSCalendarUnitMonth fromDate:self];
}

- (NSUInteger)wq_getDay {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    return [calendar component:NSCalendarUnitDay fromDate:self];
}

@end
