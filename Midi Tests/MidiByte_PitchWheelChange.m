//
//  MidiByte_PitchWheelChange.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiByte_PitchWheelChange.h"

@implementation MidiByte_PitchWheelChange

+ (NSString*)title {
    return @"pitch wheel change";
}

+ (NSArray*)descriptions {
    return [MidiByteDescription messageForAllChannelsWithBaseByte:0xE0 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [MidiByteDescription messageBytesForAllChannelsWithBaseByte:0xE0];
}

+ (unsigned char)messageLength {
    return 3;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"MidiByte_LSB", @"MidiByte_MSB", nil];
}

@end
