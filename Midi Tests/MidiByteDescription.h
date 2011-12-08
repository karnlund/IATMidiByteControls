//
//  MidiByteDescriptions.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MidiByteDecriptionProtocol <NSObject>

@required
+ (NSArray*)descriptions;
+ (NSArray*)byteValues;
+ (unsigned char)messageLength;
+ (NSArray*)messageByteClassNames;
+ (NSArray*)messageByteClasses;

@end


#define validMidiByteRange      NSMakeRange(0, 128)


@interface MidiByteDescription : NSObject

+ (NSArray*)messageForAllChannelsWithBaseByte:(unsigned char)base 
                              withDescription:(NSString*)baseDesc;

+ (NSArray*)messageBytesForAllChannelsWithBaseByte:(unsigned char)base;

+ (NSArray*)valuesForRange:(NSRange)byteRange
           withDescription:(NSString*)baseDesc;

+ (NSArray*)valuesForRange:(NSRange)byteRange
          withDescriptions:(NSArray*)baseDesciptions;

+ (NSArray*)messageBytesForRange:(NSRange)byteRange;

+ (NSArray*)noteNamesForOctave:(NSInteger)octave;

+ (NSArray*)noteNamesStartingAtOctave:(NSInteger)startOctave 
                          octaveRange:(NSUInteger)range;

+ (NSArray*)noteNamesC4;
+ (NSArray*)noteNamesC3;

+ (NSArray*)normalByteValueRange;

+ (NSArray*)allMidiCommandByteClasses;
+ (NSArray*)allMidiCommandByteDescriptions;
+ (NSArray*)descriptions;

+ (BOOL)composedOfByteDescriptorObjects;
+ (id)byteClassAtIndex:(NSUInteger)idx;
@end



@interface MidiByteDescriptionObject : NSObject <MidiByteDecriptionProtocol>

+ (BOOL)composedOfByteDescriptorObjects;

@end

