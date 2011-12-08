//
//  MidiByte_ChannelPressure.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_ChannelPressure.h"

@implementation IATMidiByte_ChannelPressure

+ (NSString*)title {
    return @"channel pressure";
}

+ (NSArray*)descriptions {
    return [IATMidiByteDescription messageForAllChannelsWithBaseByte:0xD0 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [IATMidiByteDescription messageBytesForAllChannelsWithBaseByte:0xD0];
}

+ (unsigned char)messageLength {
    return 2;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"IATMidiByte_Value", nil];
}

@end
