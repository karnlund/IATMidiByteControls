//
//  MidiBytePopUpButtonCell.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/7/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiBytePopUpButtonCell.h"
#import "MidiBytes.h"

@implementation IATMidiBytePopUpButtonCell

- (void)setupWithClass:(Class)cellClass {
    [self removeAllItems];
    
    [self setFont: [NSFont fontWithName:@"Lucida Grande" size:8.0f]];
    [self addItemsWithTitles:[cellClass descriptions]];
    [self setAlignment:NSLeftTextAlignment];
    [[[self menu] itemArray] makeObjectsPerformSelector:@selector(setRepresentedObject:) withObject:cellClass];
}

- (void)setupWithClassName:(NSString*)className {
    Class cellClass = NSClassFromString(className);

    [self setupWithClass:cellClass];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupWithClassName:@"IATMidiByteDescription"];
    }
    return self;
}

- (id)initTextCell:(NSString *)stringValue pullsDown:(BOOL)pullDown {
    self = [super initTextCell:stringValue pullsDown:NO];
    if (self) {
        [self setupWithClassName:@"IATMidiByteDescription"];
    }
    return self;
}

- (id)initTextCell:(NSString *)stringValue midiByteClassName:(NSString*)className {
    self = [super initTextCell:stringValue pullsDown:NO];
    if (self) {
        [self setupWithClassName:className];
    }
    return self;
}

- (id)init {
    self = [super initTextCell:@"" pullsDown:NO];
    if (self) {
        [self setupWithClassName:@"IATMidiByteDescription"];
    }
    return self;
}

- (void)synchronizeTitleAndSelectedItem {
    [super synchronizeTitleAndSelectedItem];
}

- (void)setActionFromString:(NSString*)actionStr {
    [self setAction:NSSelectorFromString(actionStr)];
}

@end


@implementation IATMidiPopUpButtonCell

- (Class)cellDescriptionClass {
    return [IATMidiByteDescription class];
}

- (void)setup {
    [self removeAllItems];

    Class cellClass = [self cellDescriptionClass];
    [self setFont: [NSFont fontWithName:@"Lucida Grande" size:8.0f]];
    [self addItemsWithTitles:[cellClass descriptions]];
    [self setAlignment:NSLeftTextAlignment];
    [[[self menu] itemArray] makeObjectsPerformSelector:@selector(setRepresentedObject:) withObject:cellClass];
}


- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initTextCell:(NSString *)stringValue pullsDown:(BOOL)pullDown {
    self = [super initTextCell:stringValue pullsDown:pullDown];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)synchronizeTitleAndSelectedItem {
    [super synchronizeTitleAndSelectedItem];
}

- (void)setActionFromString:(NSString*)actionStr {
    [self setAction:NSSelectorFromString(actionStr)];
}

@end


@implementation IATMidiMessagePopUpButtonCell

- (Class)cellDescriptionClass {
    return [IATMidiByteDescription class];
}

@end


@implementation IATMidiNotePopUpButtonCell

- (Class)cellDescriptionClass {
    return [IATMidiByte_Key class];
}

@end


@implementation IATMidiVelocityPopUpButtonCell

- (Class)cellDescriptionClass {
    return [IATMidiByte_Velocity class];
}

@end


@implementation IATMidiValuePopUpButtonCell


- (Class)cellDescriptionClass {
    return [IATMidiByte_Value class];
}

@end


@implementation IATMidiControlTypePopUpButtonCell

- (Class)cellDescriptionClass {
    return [IATMidiByte_ControlType class];
}

@end


@implementation IATMidiProgramNumberPopUpButtonCell

- (Class)cellDescriptionClass {
    return [IATMidiByte_ProgramNumber class];
}

@end


@implementation IATMidiLsbPopUpButtonCell

- (Class)cellDescriptionClass {
    return [IATMidiByte_LSB class];
}

@end


@implementation IATMidiMsbPopUpButtonCell

- (Class)cellDescriptionClass {
    return [IATMidiByte_MSB class];
}

@end