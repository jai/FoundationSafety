//
//  NSDictionary+Safety.m
//  ZodioJai
//
//  Created by Jai Govindani on 9/26/12.
//
//

#import "NSDictionary+Safety.h"

@implementation NSDictionary (Safety)

- (id)safeValueForKeyPath:(NSString *)keyPath
{
//    if (![self containsValidDataAtKeyPath:keyPath]) {
//        return @"";
//    }
//    else
//    {
//        return [self valueForKeyPath:keyPath];
//    }
    
    id object = self;
    NSArray *keyPaths = [keyPath componentsSeparatedByString:@"."];
    for (NSString *currentKeyPath in keyPaths) {
        if (![object isKindOfClass:[NSDictionary class]])
            object = nil;
        
        object = [object objectForKey:currentKeyPath];
        
        //Added this to prevent crash - see https://rink.hockeyapp.net/manage/apps/5179/app_versions/217/crash_reasons/8437998
        if ([object isKindOfClass:[NSNull class]]) {
            object = nil;
        }
        
        if (object == nil)
            break;
    }
    
    return object ? object : @"";
   
    
//    if (object)
//    {
//        return object;
//    }
//    
//    return @"";
}

- (NSString*)stringForKeyPath:(NSString*)keyPath {
    return [NSString stringWithFormat:@"%@", [self safeValueForKeyPath:keyPath]];
}

- (id)safeObjectForKey:(id)key
{
    if ([self objectForKey:key] == nil || [[self objectForKey:key] isEqual:[NSNull null]])
    {
        return @"";
    }
    else
    {
        return [self objectForKey:key];
    }
}

- (NSString *)stringForKey:(NSString *)key
{
    return [NSString stringWithFormat:@"%@", [self safeValueForKeyPath:key]];
}

- (NSArray *)arrayForKey:(NSString *)key
{
    if ([[self safeValueForKeyPath:key] isKindOfClass:[NSArray class]])
    {
        return [self safeValueForKeyPath:key];
    }
    
    return nil;
}

- (BOOL)containsValidDataAtKeyPath:(NSString *)keyPath
{
    id object = self;
    NSArray *keyPaths = [keyPath componentsSeparatedByString:@"."];
    for (NSString *currentKeyPath in keyPaths) {
        if (![object isKindOfClass:[NSDictionary class]])
            object = nil;
        
        object = [object objectForKey:currentKeyPath];
        
        //Added this to prevent crash - see https://rink.hockeyapp.net/manage/apps/5179/app_versions/217/crash_reasons/8437998
        if ([object isKindOfClass:[NSNull class]]) {
            object = nil;
        }
        
        if (object == nil)
            break;
    }
    
    if (object)
    {
        return YES;
    }

    return NO;
    
//    if (keyPath)
//    {
//        NSArray *keyPathComponents = [keyPath componentsSeparatedByString:@"."];
//        
//        //No key (null/nil key?)
//        if ([keyPathComponents count] == 0) {
//            return NO;
//        }
//        
//        
//        if ([keyPathComponents count] == 1)
//        {
//            //Only one key, no depth (depth = 1)
//            //This is the base case
//            if ([self objectForKey:keyPath] &&
//                ![[self objectForKey:keyPath] isEqual:[NSNull null]])
//            {
//                return YES;
//            }
//            else
//            {
//                return NO;
//            }
//        }
//        else
//        {
//            NSMutableArray *truncatedKeyPathComponents = [NSMutableArray array];
//            
//            for (int i = 1; i < [keyPathComponents count]; i++) {
//                [truncatedKeyPathComponents addObject:[keyPathComponents objectAtIndex:i]];
//            }
//            NSString *truncatedKeyPath = [truncatedKeyPathComponents componentsJoinedByString:@"."];
//
//            
//            if ([[self objectForKey:[keyPathComponents objectAtIndex:0]] isKindOfClass:[NSDictionary class]])
//            {
//                NSDictionary *nextLevelDictionary = [self objectForKey:[keyPathComponents objectAtIndex:0]];
//                return [nextLevelDictionary containsValidDataAtKeyPath:truncatedKeyPath];
//            }
//            else
//            {
//                return NO;
//            }
//        }
//                
//    }
//    
//    return NO;
}

- (NSInteger)totalRows
{
    if ([self containsValidDataAtKeyPath:@"total_rows"] &&
        [self stringForKey:@"total_rows"].length > 0)
    {
        return [[self stringForKey:@"total_rows"] integerValue];
    }
    
    return 0;
}



@end
