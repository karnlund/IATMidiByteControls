//
//  MidiByte_ProgramNumber.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_ProgramNumber.h"

@implementation IATMidiByte_ProgramNumber

+ (NSString*)title {
    return @"program number";
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
