//
//  MidiByte_ProgramChange.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_ProgramChange.h"

@implementation IATMidiByte_ProgramChange

+ (NSString*)title {
    return @"program change";
}

+ (NSArray*)descriptions {
    return [IATMidiByteDescription messageForAllChannelsWithBaseByte:0xC0 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [IATMidiByteDescription messageBytesForAllChannelsWithBaseByte:0xC0];
}

+ (unsigned char)messageLength {
    return 2;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"IATMidiByte_ProgramNumber", nil];
}

@end
