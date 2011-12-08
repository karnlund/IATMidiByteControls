//
//  MidiMessagePopUpButton.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiPopUpButton.h"
#import "IATMidiBytePopUpButtonCell.h"
#import "MidiBytes.h"

#pragma mark - Dynamic midi byte popup that can switch represented byte descriptions

@implementation IATMidiBytePopUpButton

- (void)setupWithClassName:(NSString*)className {
    [self removeAllItems];
    
    [self setFont: [NSFont fontWithName:@"Lucida Grande" size:8.0f]];
    [self addItemsWithTitles:[NSClassFromString(className) descriptions]];
    [self setAlignment:NSLeftTextAlignment];
    [self.class setCellClass: NSClassFromString(className)];
    [[[self menu] itemArray] makeObjectsPerformSelector:@selector(setRepresentedObject:) withObject:NSClassFromString(className)];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupWithClassName:@"MidiByteDescription"];
    }
    return self;
}

- (id)initWithFrame:(NSRect)buttonFrame pullsDown:(BOOL)flag {
    self = [super initWithFrame:buttonFrame pullsDown:flag];
    if (self) {
        [self setupWithClassName:@"MidiByteDescription"];
    }
    return self;
}

- (id)initWithFrame:(NSRect)buttonFrame midiByteClassName:(NSString*)className {
    self = [super initWithFrame:buttonFrame pullsDown:YES];
    if (self) {
        [self setupWithClassName:className];
    }
    return self;
}

@end

#pragma mark - Base Class to all specific byte popups

@implementation IATMidiPopUpButton

- (NSString*)cellClassName {
    NSString * myCellClassName = [NSStringFromClass(self.class) stringByAppendingString:@"Cell"];
    return myCellClassName;
}

- (Class)cellDescriptionClass {
    return [IATMidiByteDescription class];
}

- (void)setup {
    if ([self.cell class] != NSClassFromString([self cellClassName])) {
        [self removeAllItems];
        [self setFont: [NSFont fontWithName:@"Lucida Grande" size:8.0f]];
        [self addItemsWithTitles:[[self cellDescriptionClass] descriptions]];
        [self setAlignment:NSLeftTextAlignment];
        [self.class setCellClass: NSClassFromString([self cellClassName])];
        [[[self menu] itemArray] makeObjectsPerformSelector:@selector(setRepresentedObject:) withObject:[self cellDescriptionClass]];
    }
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithFrame:(NSRect)buttonFrame pullsDown:(BOOL)flag {
    self = [super initWithFrame:buttonFrame pullsDown:flag];
    if (self) {
        [self setup];
    }
    return self;
}

@end


#pragma mark - All midi command bytes

@implementation IATMidiMessagePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByteDescription class];
}

@end


#pragma mark - Midi command byte popups

@implementation IATMidiNoteOffPopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_NoteOff class];
}

@end


@implementation IATMidiNoteOnPopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_NoteOn class];
}

@end


@implementation IATMidiPolyphonicKeyPressurePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_PolyphonicKeyPressure class];
}

@end


@implementation IATMidiControlChangePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_ControlChange class];
}

@end


@implementation IATMidiProgramChangePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_ProgramChange class];
}

@end


@implementation IATMidiChannelPressurePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_ChannelPressure class];
}

@end


@implementation IATMidiPitchWheelChangePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_PitchWheelChange class];
}

@end


@implementation IATMidiSRTStartPopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_SRT_Start class];
}

@end


@implementation IATMidiSRTStopPopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_SRT_Stop class];
}

@end


@implementation IATMidiSRTContinuePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_SRT_Continue class];
}

@end


#pragma mark - Midi value byte popups

@implementation IATMidiNotePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_Key class];
}

@end


@implementation IATMidiVelocityPopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_Velocity class];
}

@end


@implementation IATMidiValuePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_Value class];
}

@end


@implementation IATMididControlTypePopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_ControlType class];
}

@end


@implementation IATMidiProgramNumberPopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_ProgramNumber class];
}

@end


@implementation IATMidiLsbPopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_LSB class];
}

@end


@implementation IATMidiMsbPopUpButton

- (Class)cellDescriptionClass {
    return [IATMidiByte_MSB class];
}

@end



