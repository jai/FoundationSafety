//
//  NSObject+Safety.m
//  ZodioJai
//
//  Created by Jai Govindani on 10/12/12.
//
//

#import "NSObject+Safety.h"

@implementation NSObject (Safety)

- (id)safeObjectAtIndex:(NSUInteger)index
{
    if ([self isKindOfClass:[NSArray class]])
    {
         return [((NSArray *)self) safeObjectAtIndex:index];
    }
    
    return @"";
}

- (id)safeValueForKeyPath:(NSString *)keyPath
{
    if ([self isKindOfClass:[NSDictionary class]])
    {
        return [((NSDictionary*)self) safeValueForKeyPath:keyPath];
    }
        
    return @"";
}

- (id)objectForKey:(NSString *)key
{
    if ([self isKindOfClass:[NSDictionary class]])
    {
        return [((NSDictionary*)self) objectForKey:key];
    }
        
    return @"";
}

- (id)objectAtIndex:(NSUInteger)index
{
    if ([self isKindOfClass:[NSArray class]])
    {
        return [((NSArray *)self) objectAtIndex:index];
    }
    
    return @"";
}

- (BOOL)isArray
{
    return [self isKindOfClass:[NSArray class]];
}

- (BOOL)isDictionary
{
    return [self isKindOfClass:[NSDictionary class]];
}



@end
