//
//  NSArray+Safety.h
//  ZodioJai
//
//  Created by Jai Govindani on 9/22/12.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (Safety)

/**
 *  Retrieves the object at the specified index (if within bounds) and returns nil if out of bounds
 *
 *  @param index The index to retrieve the object from
 *
 *  @return The object at the specified index, if within bounds. Otherwise returns nil.
 */
- (id)safeObjectAtIndex:(NSUInteger)index;

@end
