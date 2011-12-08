//
//  MidiByteDescription.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "MidiByteDescription.h"
#import "MidiBytes.h"

@implementation MidiByteDescription

+ (NSArray*)messageForAllChannelsWithBaseByte:(unsigned char)base 
                              withDescription:(NSString*)baseDesc 
{
    NSArray *results = [NSArray array];
    for (unsigned char channel = 0; channel < 16; channel++) {
        NSString * message = [NSString stringWithFormat:@"0x%02X (%d) %@ ch.%d", base | channel, base | channel, baseDesc, channel+1]; 
        results = [results arrayByAddingObject: message];
    }
    return results;
}

+ (NSArray*)messageBytesForAllChannelsWithBaseByte:(unsigned char)base
{
    NSArray *results = [NSArray array];
    for (unsigned char channel = 0; channel < 16; channel++) {
        NSNumber * messageValue = [NSNumber numberWithUnsignedChar:base | channel];
        results = [results arrayByAddingObject: messageValue];
    }
    return results;
}

+ (NSArray*)valuesForRange:(NSRange)byteRange
           withDescription:(NSString*)baseDesc 
{
    NSArray *results = [NSArray array];
    for (unsigned char value = byteRange.location; value < byteRange.length; value++) {
        NSString * message = [NSString stringWithFormat:@"0x%02X (%d) %@", value, value, baseDesc]; 
        results = [results arrayByAddingObject: message];
    }
    return results;
}

+ (NSArray*)valuesForRange:(NSRange)byteRange
          withDescriptions:(NSArray*)baseDesciptions 
{
    NSArray *results = [NSArray array];
    for (unsigned char value = byteRange.location; value < byteRange.length; value++) {
        NSString * message = [NSString stringWithFormat:@"0x%02X (%d) %@", value, value, [baseDesciptions objectAtIndex:value]]; 
        results = [results arrayByAddingObject: message];
    }
    return results;
}

+ (NSArray*)messageBytesForRange:(NSRange)byteRange
{
    NSArray *results = [NSArray array];
    for (unsigned char value = byteRange.location; value < byteRange.length; value++) {
        NSNumber * messageValue = [NSNumber numberWithUnsignedChar: value];
        results = [results arrayByAddingObject: messageValue];
    }
    return results;
}

+ (NSArray*)noteNames {
    return [NSArray arrayWithObjects:@"A", @"A#", @"B", @"C", @"C#", @"D", @"D#", @"E", @"F", @"F#", @"G", @"G#", nil];
}

+ (NSArray*)noteNamesForOctave:(NSInteger)octave
{
    NSArray *results = [NSArray array];
    for (NSString *note in [self noteNames]) {
        NSString * octavizedName = [NSString stringWithFormat:@"%@%d", note, octave];
        results = [results arrayByAddingObject:octavizedName];
    }
    return results;
}

+ (NSArray*)prependNoteValuesToNoteNames:(NSArray*)names 
                         startingAtValue:(unsigned char)starting
{
    NSArray *results = [NSArray array];
    NSUInteger value = starting;
    for (NSString *note in names) {
        NSString * numberedName = [NSString stringWithFormat:@"0x%02X (%d) %@", value, value, note];
        value++;
        results = [results arrayByAddingObject:numberedName];
    }
    return results;
}

+ (NSArray*)noteNamesStartingAtOctave:(NSInteger)startOctave octaveRange:(NSUInteger)range
{
    NSArray *results = [NSArray array];
    unsigned char startingValue = 0;
    for (NSInteger octave = startOctave; octave < (NSInteger)(startOctave + range); octave++) {
        NSArray* noteNames = [self noteNamesForOctave:octave];
        if (octave == startOctave)
            noteNames = [noteNames subarrayWithRange:NSMakeRange(3, 9)];
        results = [results arrayByAddingObjectsFromArray:[self prependNoteValuesToNoteNames:noteNames startingAtValue:startingValue]];
        startingValue += noteNames.count;
    }
    if (results.count > 128)
        results = [results subarrayWithRange:NSMakeRange(0, 128)];
    return results;
}

+ (NSArray*)noteNamesC4
{
    return [self noteNamesStartingAtOctave:-1 octaveRange:11];
}

+ (NSArray*)noteNamesC3
{
    return [self noteNamesStartingAtOctave:-2 octaveRange:11];
}

+ (NSArray*)normalByteValueRange {
    return [self messageBytesForRange: validMidiByteRange];
}

+ (NSArray*)allMidiCommandByteClasses {
    NSArray * results = [NSArray arrayWithObjects:
                         MidiByte_NoteOff.class, 
                         MidiByte_NoteOn.class, 
                         MidiByte_PolyphonicKeyPressure.class,
                         MidiByte_ControlChange.class,
                         MidiByte_ProgramChange.class,
                         MidiByte_ChannelPressure.class,
                         MidiByte_PitchWheelChange.class,
                         MidiByte_SRT_Start.class,
                         MidiByte_SRT_Continue.class,
                         MidiByte_SRT_Stop.class,
                         nil];
    return results;    
}

+ (NSArray*)allMidiCommandByteDescriptions {
    NSArray * results = [NSArray array];
    for (Class byteCmdClass in [self allMidiCommandByteClasses]) {
        results = [results arrayByAddingObjectsFromArray:[byteCmdClass descriptions]];
    }
    
    return results;
}

+ (NSArray*)descriptions {
    return [self allMidiCommandByteDescriptions];
}

+ (BOOL)composedOfByteDescriptorObjects {
    return YES;
}

+ (id)byteClassAtIndex:(NSUInteger)idx {
    NSArray * results = [NSArray array];
    for (Class byteCmdClass in [self allMidiCommandByteClasses]) {
        results = [results arrayByAddingObjectsFromArray:[byteCmdClass descriptions]];
        if (idx < results.count)
            return byteCmdClass;
    }
    return nil;
}

@end


@implementation MidiByteDescriptionObject 

+ (NSArray*)descriptions {
    return nil;
}

+ (NSArray*)byteValues {
    return nil;
}

+ (unsigned char)messageLength {
    return 0;
}

+ (NSArray*)messageByteClassNames {
    return nil;
}

+ (NSArray*)messageByteClasses {
    NSArray * classList = [NSArray array];
    for (NSString* className in [self messageByteClassNames]) {
        classList = [classList arrayByAddingObject: NSClassFromString(className)];
    }
    return classList;
}

+ (BOOL)composedOfByteDescriptorObjects {
    return NO;
}

@end