//
//  NSMutableDictionary_SafetySpec.m
//  FoundationSafety
//
//  Created by Jai Govindani on 6/14/14.
//  Copyright 2014 Jai Govindani. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "NSMutableDictionary+Safety.h"


SPEC_BEGIN(NSMutableDictionary_SafetySpec)

describe(@"NSMutableDictionary_Safety", ^{
    
    __block NSMutableDictionary *testMutableDictionary;
    
    beforeAll(^{
        testMutableDictionary = [NSMutableDictionary dictionary];
    });
    
    afterEach(^{
        testMutableDictionary = nil;
    });
    
    it(@"Should not raise an exception when adding a nil object", ^{
        [[theBlock(^{
            [testMutableDictionary safeSetObject:nil forKey:@"key"];
        }) shouldNot] raise];
    });
    
    it(@"Should not add anything if object is nil", ^{
        [[theValue([testMutableDictionary count]) should] equal:0 withDelta:0];
        [testMutableDictionary safeSetObject:nil forKey:@"key"];
        [[theValue([testMutableDictionary count]) should] equal:0 withDelta:0];
    });

});

SPEC_END
