//
//  MidiByte_PolyphonicKeyPressure.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiByte_PolyphonicKeyPressure.h"

@implementation MidiByte_PolyphonicKeyPressure

+ (NSString*)title {
    return @"poly key pressure";
}

+ (NSArray*)descriptions {
    return [MidiByteDescription messageForAllChannelsWithBaseByte:0xA0 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [MidiByteDescription messageBytesForAllChannelsWithBaseByte:0xA0];
}

+ (unsigned char)messageLength {
    return 3;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"MidiByte_Key", @"MidiByte_Value", nil];
}


@end
