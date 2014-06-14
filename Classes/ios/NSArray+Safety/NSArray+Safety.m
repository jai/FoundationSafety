//
//  NSArray+Safety.m
//  ZodioJai
//
//  Created by Jai Govindani on 9/22/12.
//
//

#import "NSArray+Safety.h"

@implementation NSArray (Safety)

- (id)safeObjectAtIndex:(NSUInteger)index
{
    if (index < [self count])
    {
        return [self objectAtIndex:index];
    }
    
    return nil;
}


@end
