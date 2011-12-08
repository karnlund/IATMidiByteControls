//
//  MidiMessagePopUpButton.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiPopUpButtons.h"
#import "MidiBytePopUpButtonCell.h"
#import "MidiBytes.h"

#pragma mark - Dynamic midi byte popup that can switch represented byte descriptions

@implementation MidiBytePopUpButton

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

@implementation MidiPopUpButton

- (NSString*)cellClassName {
    NSString * myCellClassName = [NSStringFromClass(self.class) stringByAppendingString:@"Cell"];
    return myCellClassName;
}

- (Class)cellDescriptionClass {
    return [MidiByteDescription class];
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

@implementation MidiMessagePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByteDescription class];
}

@end


#pragma mark - Midi command byte popups

@implementation MidiNoteOffPopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_NoteOff class];
}

@end


@implementation MidiNoteOnPopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_NoteOn class];
}

@end


@implementation MidiPolyphonicKeyPressurePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_PolyphonicKeyPressure class];
}

@end


@implementation MidiControlChangePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_ControlChange class];
}

@end


@implementation MidiProgramChangePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_ProgramChange class];
}

@end


@implementation MidiChannelPressurePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_ChannelPressure class];
}

@end


@implementation MidiPitchWheelChangePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_PitchWheelChange class];
}

@end


@implementation MidiSRTStartPopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_SRT_Start class];
}

@end


@implementation MidiSRTStopPopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_SRT_Stop class];
}

@end


@implementation MidiSRTContinuePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_SRT_Continue class];
}

@end


#pragma mark - Midi value byte popups

@implementation MidiNotePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_Key class];
}

@end


@implementation MidiVelocityPopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_Velocity class];
}

@end


@implementation MidiValuePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_Value class];
}

@end


@implementation MididControlTypePopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_ControlType class];
}

@end


@implementation MidiProgramNumberPopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_ProgramNumber class];
}

@end


@implementation MidiLsbPopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_LSB class];
}

@end


@implementation MidiMsbPopUpButton

- (Class)cellDescriptionClass {
    return [MidiByte_MSB class];
}

@end



