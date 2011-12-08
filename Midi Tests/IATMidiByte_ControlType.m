//
//  MidiByte_ControlType.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_ControlType.h"

@implementation IATMidiByte_ControlType

+ (NSString*)title {
    return @"control type";
}

+ (NSArray*)controlDescriptions {
    return [NSArray arrayWithObjects:
            @"Bank Select", 
            @"Modulation Wheel",
            @"Breath Controller",
            @"Undefined",
            @"Foot Controller",
            @"Portamento Time",
            @"Data Entry MSB",
            @"Channel Volume",
            @"Balance",
            @"Undefined",
            @"Pan",
            @"Expression Controller",
            @"Effect Control 1",
            @"Effect Control 2",
            @"Undefined",
            @"Undefined",
            @"General Purpose Controller 1",
            @"General Purpose Controller 2",
            @"General Purpose Controller 3",
            @"General Purpose Controller 4",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"LSB for Control 0 (Bank Select)",
            @"LSB for Control 1 (Modulation Wheel or Lever)",
            @"LSB for Control 2 (Breath Controller)",
            @"LSB for Control 3 (Undefined)",
            @"LSB for Control 4 (Foot Controller)",
            @"LSB for Control 5 (Portamento Time)",
            @"LSB for Control 6 (Data Entry)",
            @"LSB for Control 7 (Channel Volume, formerly Main Volume)",
            @"LSB for Control 8 (Balance)",
            @"LSB for Control 9 (Undefined)",
            @"LSB for Control 10 (Pan)",
            @"LSB for Control 11 (Expression Controller)",
            @"LSB for Control 12 (Effect control 1)",
            @"LSB for Control 13 (Effect control 2)",
            @"LSB for Control 14 (Undefined)",
            @"LSB for Control 15 (Undefined)",
            @"LSB for Control 16 (General Purpose Controller 1)",
            @"LSB for Control 17 (General Purpose Controller 2)",
            @"LSB for Control 18 (General Purpose Controller 3)",
            @"LSB for Control 19 (General Purpose Controller 4)",
            @"LSB for Control 20 (Undefined)",
            @"LSB for Control 21 (Undefined)",
            @"LSB for Control 22 (Undefined)",
            @"LSB for Control 23 (Undefined)",
            @"LSB for Control 24 (Undefined)",
            @"LSB for Control 25 (Undefined)",
            @"LSB for Control 26 (Undefined)",
            @"LSB for Control 27 (Undefined)",
            @"LSB for Control 28 (Undefined)",
            @"LSB for Control 29 (Undefined)",
            @"LSB for Control 30 (Undefined)",
            @"LSB for Control 31 (Undefined)",
            @"Damper Pedal Off/On (Sustain)",
            @"Portamento Off/On",
            @"Sostenuto Off/On",
            @"Soft Pedal Off/On",
            @"Legato Footswitch",
            @"Hold 2",
            @"Sound Controller 1 (default: Sound Variation)",
            @"Sound Controller 2 (default: Timbre/Harmonic Intens.)",
            @"Sound Controller 3 (default: Release Time)",
            @"Sound Controller 4 (default: Attack Time)",
            @"Sound Controller 5 (default: Brightness)",
            @"Sound Controller 6 (default: Decay Time)",
            @"Sound Controller 7 (default: Vibrato Rate)",
            @"Sound Controller 8 (default: Vibrato Depth)",
            @"Sound Controller 9 (default: Vibrato Delay)",
            @"Sound Controller 10 (default: Undefined)",
            @"General Purpose Controller 5",
            @"General Purpose Controller 6",
            @"General Purpose Controller 7",
            @"General Purpose Controller 8",
            @"Portamento Control",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"High Resolution Velocity Prefix",
            @"Undefined",
            @"Undefined",
            @"Effects 1 Depth",
            @"Effects 2 Depth",
            @"Effects 3 Depth",
            @"Effects 4 Depth",
            @"Effects 5 Depth",
            @"Data Increment",
            @"Data Decrement",
            @"Non-Registered Parameter Number (NRPN) - LSB",
            @"Non-Registered Parameter Number (NRPN) - MSB",
            @"Registered Parameter Number (RPN) - LSB",
            @"Registered Parameter Number (RPN) - MSB",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"Undefined",
            @"[Channel Mode Message] All Sound Off",
            @"[Channel Mode Message] Reset All Controllers",
            @"[Channel Mode Message] Local Control On/Off",
            @"[Channel Mode Message] All Notes Off",
            @"[Channel Mode Message] Omni Mode Off (+ all notes off)",
            @"[Channel Mode Message] Omni Mode On (+ all notes off)",
            @"[Channel Mode Message] Mono Mode On (+ poly off, + all notes off)",
            @"[Channel Mode Message] Poly Mode On (+ mono off, +all notes off)",
            nil];
}

+ (NSArray*)descriptions {
    return [IATMidiByteDescription valuesForRange:NSMakeRange(0, 128)
                               withDescriptions:[self controlDescriptions]];
}

+ (NSArray*)byteValues {
    return [IATMidiByteDescription normalByteValueRange];
}

+ (unsigned char)messageLength {
    return 1;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects: nil];
};

@end
