//
//  MidiByte_NoteOff.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiByte_NoteOff.h"

@implementation MidiByte_NoteOff

+ (NSString*)title {
    return @"note off";
}

+ (NSArray*)descriptions {
    return [MidiByteDescription messageForAllChannelsWithBaseByte:0x80 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [MidiByteDescription messageBytesForAllChannelsWithBaseByte:0x80];
}

+ (unsigned char)messageLength {
    return 3;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"MidiByte_Key", @"MidiByte_Velocity", nil];
}


@end
