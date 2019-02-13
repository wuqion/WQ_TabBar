//
//  NSDictionary+WQ_SafeValue.h
//  ChildrenPalace
//
//  Created by 吴琼 on 2019/1/17.
//  Copyright © 2018 吴琼. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (WQ_SafeValue)

- (nullable NSString *)stringForKey:(nonnull id)aKey;
- (nonnull NSString *)nonullStringForKey:(nonnull id)aKey;
- (NSInteger)integerForKey:(nonnull id)aKey;
- (int)intForKey:(nonnull id)aKey;
- (float)floatForKey:(nonnull id)aKey;
- (double)doubleForKey:(nonnull id)aKey;
- (BOOL)boolForKey:(nonnull id)aKey;
- (nullable NSDictionary *)dictionaryForKey:(nonnull id)aKey;
- (nullable NSArray *)arrayForKey:(nonnull id)aKey;

@end

NS_ASSUME_NONNULL_END
