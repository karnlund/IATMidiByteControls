//
//  MidiByte_NoteOn.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_NoteOn.h"

@implementation IATMidiByte_NoteOn

+ (NSString*)title {
    return @"note on";
}

+ (NSArray*)descriptions {
    return [IATMidiByteDescription messageForAllChannelsWithBaseByte:0x90 withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [IATMidiByteDescription messageBytesForAllChannelsWithBaseByte:0x90];
}

+ (unsigned char)messageLength {
    return 3;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects:@"IATMidiByte_Key", @"IATMidiByte_Velocity", nil];
}


@end
