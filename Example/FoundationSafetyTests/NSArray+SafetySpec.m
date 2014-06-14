//
//  NSArray_SafetySpec.m
//  FoundationSafety
//
//  Created by Jai Govindani on 6/14/14.
//  Copyright 2014 Jai Govindani. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "NSArray+Safety.h"


SPEC_BEGIN(NSArray_SafetySpec)

describe(@"NSArray_Safety", ^{
    
    __block NSArray *testArray;
    
    beforeAll(^{
        testArray = [NSArray arrayWithObjects:@"Zero", @"One", @"Two", nil];
    });
    
    afterEach(^{
        testArray = nil;
    });
    
    it(@"Should not throw an exception when reaching for something out of bounds", ^{
        [[theBlock(^{
            [testArray safeObjectAtIndex:testArray.count];
        }) shouldNot] raise];
    });
    
    it(@"Should return a nil object when reaching out of bounds", ^{
        [[[testArray safeObjectAtIndex:testArray.count] should] beNil];
    });

});

SPEC_END
