//
//  NSDate+WQ_Extension.h
//  ChildrenPalace
//
//  Created by 吴琼 on 2019/1/17.
//  Copyright © 2018 吴琼. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (WQ_Extension)

- (NSUInteger)wq_getComponent:(NSCalendarUnit)component;
- (NSString *)wq_getCurrentYear;
- (NSUInteger)wq_getYear;
- (NSUInteger)wq_getMonth;
- (NSUInteger)wq_getDay;

@end

NS_ASSUME_NONNULL_END
