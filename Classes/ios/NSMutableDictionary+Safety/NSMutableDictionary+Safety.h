//
//  NSMutableDictionary+Safety.h
//  ZodioJai
//
//  Created by Jai Govindani on 9/25/12.
//
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Safety)

/**
 *  A variant of setObject:forKey: with protection against setting nil objects
 *
 *  @param anObject The object to set - can be nil, this method checks for that
 *  @param aKey     The key for the given object
 */
- (void)safeSetObject:(id)anObject forKey:(id < NSCopying >)aKey;

@end
