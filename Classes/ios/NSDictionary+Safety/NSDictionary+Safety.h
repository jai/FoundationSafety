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

/**
 *  This method is meant to return an NSString object regardless of whether the JSON key exists in the dictionary or not. If the key doesn't exist, the method returns an empty string
 *
 *  @param key The JSON key to access
 *
 *  @return Returns the value for the given JSON key as an NSString. If they key doesn't exist, an empty string "" is returned
 */
- (NSString *)stringForKey:(NSString *)key;

/**
 *  See stringForKey:
 *
 *  @param key The JSON key to access
 *
 *  @return Returns the array at the specified key, otherwise returns nil
 */
- (NSArray *)arrayForKey:(NSString *)key;

/**
 *  Checks to see if the specified keypath exists without raising an exception if it doesn't
 *
 *  @param keyPath The keypath to check for
 *
 *  @return Returns YES if the keypath exists, NO if it doesn't (without raising an exception)
 */
- (BOOL)containsValidDataAtKeyPath:(NSString *)keyPath;

/**
 *  Checks for a JSON key named 'total_rows' and returns the value in the key cast as an NSInteger
 *
 *  @return The integer value of the 'total_rows' JSON key if it exists, -1 if it doesn't.
 */
- (NSInteger)totalRows;

@end
