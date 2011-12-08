//
//  MidiByte_ProgramChange.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiByte_ProgramChange.h"

@implementation MidiByte_ProgramChange

+ (NSString*)title {
    return @"program change";
}

+ (NSArray*)descriptions {
    return [MidiByteDescription messageForAllChannelsWithBaseByte:0xC0 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [MidiByteDescription messageBytesForAllChannelsWithBaseByte:0xC0];
}

+ (unsigned char)messageLength {
    return 2;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"MidiByte_ProgramNumber", nil];
}

@end
