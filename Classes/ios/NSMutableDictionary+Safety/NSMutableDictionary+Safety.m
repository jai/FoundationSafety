//
//  NSMutableDictionary+Safety.m
//  ZodioJai
//
//  Created by Jai Govindani on 9/25/12.
//
//

#import "NSMutableDictionary+Safety.h"

@implementation NSMutableDictionary (Safety)

- (void)safeSetObject:(id)anObject forKey:(id < NSCopying >)aKey
{
    if (anObject == nil)
    {
        [self setObject:@"" forKey:aKey];
    }
    else
    {
        [self setObject:anObject forKey:aKey];
    }
}

@end
