//
//  NSMutableArray+Safety.m
//  ZodioJai
//
//  Created by Jai Govindani on 9/25/12.
//
//

#import "NSMutableArray+Safety.h"

@implementation NSMutableArray (Safety)

- (void)safeAddObject:(id)object
{
    if (object == nil)
    {
        [self addObject:@""];
    }
    else
    {
        [self addObject:object];
    }
}

@end
