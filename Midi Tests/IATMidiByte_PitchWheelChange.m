//
//  MidiByte_PitchWheelChange.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_PitchWheelChange.h"

@implementation IATMidiByte_PitchWheelChange

+ (NSString*)title {
    return @"pitch wheel change";
}

+ (NSArray*)descriptions {
    return [IATMidiByteDescription messageForAllChannelsWithBaseByte:0xE0 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [IATMidiByteDescription messageBytesForAllChannelsWithBaseByte:0xE0];
}

+ (unsigned char)messageLength {
    return 3;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"IATMidiByte_LSB", @"IATMidiByte_MSB", nil];
}

@end
