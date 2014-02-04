//
//  IdentifyTests.m
//  IdentifyTests
//

#define EXP_SHORTHAND

#import "Expecta.h"
#import "Specta.h"
#import "Identify.h"

SpecBegin(Identify)

describe(@"makeId", ^{
    NSString *makeId = [Identify makeId];
    
    it(@"is short", ^{
        expect(makeId).to.haveCountOf(23);
    });
    
    it(@"starts with a letter", ^{
        expect([makeId characterAtIndex:0]).to.beGreaterThanOrEqualTo('a');
        expect([makeId characterAtIndex:0]).to.beLessThanOrEqualTo('z');
    });
    
    it(@"is unique", ^{
        expect([Identify makeId]).notTo.equal(makeId);
    });
});

describe(@"deviceId", ^{
    NSString *deviceId = [Identify deviceId];
    
    it(@"is short", ^{
        expect(deviceId).to.haveCountOf(23);
    });
    
    it(@"starts with a letter", ^{
        expect([deviceId characterAtIndex:0]).to.beGreaterThanOrEqualTo('a');
        expect([deviceId characterAtIndex:0]).to.beLessThanOrEqualTo('z');
    });
    
    it(@"is not unique", ^{
        expect([Identify deviceId]).to.equal(deviceId);
    });
});

describe(@"synthesizeId", ^{
    NSString *synthId = [Identify synthesizeId:@"alpha", @"bravo", @"charlie", nil];
    
    it(@"hashes together ids", ^{
        expect(synthId).to.equal(@"zXIIMhuaYRKpYAGdRj3SWbPchixQ");
    });
    
    it(@"starts with a letter", ^{
        expect([synthId characterAtIndex:0]).to.beGreaterThanOrEqualTo('a');
        expect([synthId characterAtIndex:0]).to.beLessThanOrEqualTo('z');
    });
});

SpecEnd
