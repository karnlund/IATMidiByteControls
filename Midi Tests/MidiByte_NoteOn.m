//
//  MidiByte_NoteOn.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiByte_NoteOn.h"

@implementation MidiByte_NoteOn

+ (NSString*)title {
    return @"note on";
}

+ (NSArray*)descriptions {
    return [MidiByteDescription messageForAllChannelsWithBaseByte:0x90 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [MidiByteDescription messageBytesForAllChannelsWithBaseByte:0x90];
}

+ (unsigned char)messageLength {
    return 3;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"MidiByte_Key", @"MidiByte_Velocity", nil];
}


@end
