//
//  MidiByte_LsbMsb.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiByte_LsbMsb.h"

@implementation MidiByte_LSB

+ (NSString*)title {
    return @"LSB value";
}

+ (NSArray*)descriptions {
    return [MidiByteDescription valuesForRange:NSMakeRange(0, 128)
                               withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [MidiByteDescription normalByteValueRange];
}

+ (unsigned char)messageLength {
    return 1;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects: nil];
}

@end



@implementation MidiByte_MSB

+ (NSString*)title {
    return @"MSB value";
}

+ (NSArray*)descriptions {
    return [MidiByteDescription valuesForRange:NSMakeRange(0, 128)
                               withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [MidiByteDescription normalByteValueRange];
}

+ (unsigned char)messageLength {
    return 1;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects: nil];
}

@end
