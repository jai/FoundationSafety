//
//  NSObject+Safety.h
//  ZodioJai
//
//  Created by Jai Govindani on 10/12/12.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (Safety)

/**
 *  See [NSArray safeObjectAtIndex]
 */
- (id)safeObjectAtIndex:(NSUInteger)index;

/**
 *  See [NSDictionary safeValueForKeyPath]
 */
- (id)safeValueForKeyPath:(NSString *)keyPath;

- (id)objectForKey:(NSString *)key;
- (id)objectAtIndex:(NSUInteger)index;

/**
 *  Checks the current object's class and returns the status of an [isKindOfClass:[NSArray class]] call
 *
 *  @return The result of [isKindOfClass:[NSArray class]]
 */
- (BOOL)isArray;

/**
 *  Checks the current object's class and returns the status of an [isKindOfClass:[NSDictionary class]] call
 *
 *  @return The result of [isKindOfClass:[NSDictionary class]]
 */
- (BOOL)isDictionary;

@end
