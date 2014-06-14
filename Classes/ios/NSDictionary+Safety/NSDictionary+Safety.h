//
//  NSDictionary+Safety.h
//  ZodioJai
//
//  Created by Jai Govindani on 9/26/12.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Safety)

- (id)safeValueForKeyPath:(NSString *)keyPath;

/**
 *  Same as calling safeValueForKeyPath: except it encapsulates the return in an [NSString stringWithFormat:] call
 *
 *  @param keyPath The keypath to get the value from
 *
 *  @return If there's no value at the key path, it returns an empty string @"", otherwise returns a string-formatted value
 */
- (NSString*)stringForKeyPath:(NSString*)keyPath;

/**
 *  Retrieves an object at the specified key, and an empty string "" if the specified key is not found
 *
 *  @param key The key to retrieve the object from
 *
 *  @return The object for the specified key, if one exists. Otherwise returns an empty string ""
 */
- (id)safeObjectForKey:(id)key;

- (NSString *)stringForKey:(NSString *)key;
- (NSArray *)arrayForKey:(NSString *)key;
- (BOOL)containsValidDataAtKeyPath:(NSString *)keyPath;


/*!
   Checks the current dictionary for a 'total_rows' key and returns the int value of that if it exists. If they key doesn't exist, method returns -1.
 */
- (NSInteger)totalRows;

@end
