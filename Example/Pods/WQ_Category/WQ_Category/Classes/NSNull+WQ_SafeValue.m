//
//  NSNull+WQ_SafeValue.m
//  ChildrenPalace
//
//  Created by 吴琼 on 2019/1/17.
//  Copyright © 2018 吴琼. All rights reserved.
//

#import "NSNull+WQ_SafeValue.h"

#define NSNullObjects @[@"",@0,@{},@[]]

@implementation NSNull (WQ_SafeValue)

- (NSMethodSignature*)methodSignatureForSelector:(SEL)selector {
    NSMethodSignature* signature = [super methodSignatureForSelector:selector];
    if (!signature) {
        for (NSObject *object in NSNullObjects) {
            signature = [object methodSignatureForSelector:selector];
            if (signature) {
                break;
            }
        }
    }
    
    if (!signature) {
        signature = [NSMethodSignature signatureWithObjCTypes:"@^v^c"];
    }
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL aSelector = [anInvocation selector];
    
    for (NSObject *object in NSNullObjects) {
        if ([object respondsToSelector:aSelector]) {
            [anInvocation invokeWithTarget:object];
            return;
        }
    }
}

@end
