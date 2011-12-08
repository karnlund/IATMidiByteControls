//
//  MidiByte_Value.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_Value.h"

@implementation IATMidiByte_Value

+ (NSString*)title {
    return @"value";
}

+ (NSArray*)descriptions {
    return [IATMidiByteDescription valuesForRange:NSMakeRange(0, 128)
                               withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [IATMidiByteDescription normalByteValueRange];
}

+ (unsigned char)messageLength {
    return 1;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects: nil];
}

@end
