#import "Kiwi.h"
#import <NSDictionary+Safety.h>

SPEC_BEGIN(JGNSDictionarySafetySpec)

describe(@"JGNSDictionarySafetySpec", ^{
    
    __block NSDictionary *testDictionary = nil;
    
    beforeEach(^{
        NSString *value = @"Hello";
        NSDictionary *levelFour = [NSDictionary dictionaryWithObject:value forKey:@"five"];
        NSDictionary *levelThree = [NSDictionary dictionaryWithObject:levelFour forKey:@"four"];
        NSDictionary *levelTwo = [NSDictionary dictionaryWithObject:levelThree forKey:@"three"];
        NSDictionary *levelOne = [NSDictionary dictionaryWithObject:levelTwo forKey:@"two"];
        testDictionary = [NSDictionary dictionaryWithObject:levelOne forKey:@"one"];
    });
    
    afterAll(^{
        testDictionary = nil;
    });
    
    it(@"should not be nil and should be a dictionary", ^{
        [testDictionary shouldNotBeNil];
        [[theValue([testDictionary isKindOfClass:[NSDictionary class]]) should] beTrue];
    });
    
    it(@"should have the correct value", ^{
        [[theValue([[testDictionary objectForKey:@"one"] isKindOfClass:[NSDictionary class]]) should] beTrue];
        
    });
    
    it(@"should be able to test for nonexistent key paths", ^{
       
        //TODO: This isn't raising an exception - why not?!
        [[theBlock(^{
            [testDictionary valueForKeyPath:@"one.two.three.four.five.six"];
        }) should] raise];
        
        [[theBlock(^{
            [testDictionary containsValidDataAtKeyPath:@"one.two.three.four.five.six"];
        }) shouldNot] raise];
        
        [[theBlock(^{
            [testDictionary safeValueForKeyPath:@"one.two.three.four.five.six"];
        }) shouldNot] raise];
    });
});

SPEC_END