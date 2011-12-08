//
//  MidiBytePopUpButtonCell.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/7/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiBytePopUpButtonCell.h"
#import "MidiBytes.h"

@implementation MidiBytePopUpButtonCell

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
        [self setupWithClassName:@"MidiByteDescription"];
    }
    return self;
}

- (id)initTextCell:(NSString *)stringValue pullsDown:(BOOL)pullDown {
    self = [super initTextCell:stringValue pullsDown:NO];
    if (self) {
        [self setupWithClassName:@"MidiByteDescription"];
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
        [self setupWithClassName:@"MidiByteDescription"];
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


@implementation MidiPopUpButtonCell

- (Class)cellDescriptionClass {
    return [MidiByteDescription class];
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


@implementation MidiMessagePopUpButtonCell

- (Class)cellDescriptionClass {
    return [MidiByteDescription class];
}

@end


@implementation MidiNotePopUpButtonCell

- (Class)cellDescriptionClass {
    return [MidiByte_Key class];
}

@end


@implementation MidiVelocityPopUpButtonCell

- (Class)cellDescriptionClass {
    return [MidiByte_Velocity class];
}

@end


@implementation MidiValuePopUpButtonCell


- (Class)cellDescriptionClass {
    return [MidiByte_Value class];
}

@end


@implementation MididControlTypePopUpButtonCell

- (Class)cellDescriptionClass {
    return [MidiByte_ControlType class];
}

@end


@implementation MidiProgramNumberPopUpButtonCell

- (Class)cellDescriptionClass {
    return [MidiByte_ProgramNumber class];
}

@end


@implementation MidiLsbPopUpButtonCell

- (Class)cellDescriptionClass {
    return [MidiByte_LSB class];
}

@end


@implementation MidiMsbPopUpButtonCell

- (Class)cellDescriptionClass {
    return [MidiByte_MSB class];
}

@end