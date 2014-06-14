//
//  NSObject+Safety.h
//  ZodioJai
//
//  Created by Jai Govindani on 10/12/12.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (Safety)

- (id)safeObjectAtIndex:(NSUInteger)index;
- (id)safeValueForKeyPath:(NSString *)keyPath;
- (id)objectForKey:(NSString *)key;
- (id)objectAtIndex:(NSUInteger)index;

/*!
   Checks the current object's class and returns the status of an [isKindOfClass:[NSArray class]] call
 */
- (BOOL)isArray;

/*!
   Checks the current object's class and returns the status of an [isKindOfClass:[NSDictionary class]] call
 */
- (BOOL)isDictionary;

@end
