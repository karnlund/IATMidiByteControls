//
//  MidiByte_ChannelPressure.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiByte_ChannelPressure.h"

@implementation MidiByte_ChannelPressure

+ (NSString*)title {
    return @"channel pressure";
}

+ (NSArray*)descriptions {
    return [MidiByteDescription messageForAllChannelsWithBaseByte:0xD0 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [MidiByteDescription messageBytesForAllChannelsWithBaseByte:0xD0];
}

+ (unsigned char)messageLength {
    return 2;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"MidiByte_Value", nil];
}

@end
