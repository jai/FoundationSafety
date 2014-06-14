//
//  NSMutableArray_SafetySpec.m
//  FoundationSafety
//
//  Created by Jai Govindani on 6/14/14.
//  Copyright 2014 Jai Govindani. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "NSMutableArray+Safety.h"


SPEC_BEGIN(NSMutableArray_SafetySpec)

describe(@"NSMutableArray_Safety", ^{

    __block NSMutableArray *testMutableArray;
    
    beforeAll(^{
        testMutableArray = [NSMutableArray array];
    });
    
    afterEach(^{
        testMutableArray = nil;
    });
    
    it(@"Should not raise an exception when adding nil", ^{
        [[theBlock(^{
            [testMutableArray safeAddObject:nil];
        }) shouldNot] raise];
    });
    
    it(@"Should not insert anything if object is nil", ^{
        [[theValue(testMutableArray.count) should] equal:0 withDelta:0];
        [testMutableArray safeAddObject:nil];
        [[theValue(testMutableArray.count) should] equal:0 withDelta:0];
    });
});

SPEC_END
