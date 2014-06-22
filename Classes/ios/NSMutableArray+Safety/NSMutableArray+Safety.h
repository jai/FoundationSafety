//
//  NSMutableArray+Safety.h
//  ZodioJai
//
//  Created by Jai Govindani on 9/25/12.
//
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Safety)

/**
 *  Checks if an object is nil before adding to the array, in order to avoid an exception.
 *
 *  @param object The object to add. Can be nil, this method will check first before adding.
 */
- (void)safeAddObject:(id)object;

@end
