//
//  NSMutableDictionary+Safety.h
//  ZodioJai
//
//  Created by Jai Govindani on 9/25/12.
//
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Safety)

- (void)safeSetObject:(id)anObject forKey:(id < NSCopying >)aKey;

@end
