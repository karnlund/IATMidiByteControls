//
//  MidiBytpe_ControlChange.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_ControlChange.h"

@implementation IATMidiByte_ControlChange

+ (NSString*)title {
    return @"control change";
}

+ (NSArray*)descriptions {
    return [IATMidiByteDescription messageForAllChannelsWithBaseByte:0xB0 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [IATMidiByteDescription messageBytesForAllChannelsWithBaseByte:0xB0];
}

+ (unsigned char)messageLength {
    return 3;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"IATMidiByte_ControlType", @"IATMidiByte_Value", nil];
}

@end
