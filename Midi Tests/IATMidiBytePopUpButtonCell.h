//
//  MidiBytePopUpButtonCell.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/7/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import <AppKit/AppKit.h>

#pragma mark - MidiBytePopUpButtonCell : Programmable universal cell
@interface IATMidiBytePopUpButtonCell : NSPopUpButtonCell
- (void)setupWithClass:(Class)cellClass;
- (void)setupWithClassName:(NSString*)className;
- (id)initTextCell:(NSString *)stringValue pullsDown:(BOOL)pullDown;
- (id)initTextCell:(NSString *)stringValue midiByteClassName:(NSString*)className;
@end

#pragma mark - MidiPopUpButtonCell : Base class for specific cells
@interface IATMidiPopUpButtonCell : NSPopUpButtonCell
@end

#pragma mark - Specific cells
@interface IATMidiMessagePopUpButtonCell : IATMidiPopUpButtonCell
@end

@interface IATMidiNotePopUpButtonCell : IATMidiPopUpButtonCell
@end

@interface IATMidiVelocityPopUpButtonCell : IATMidiPopUpButtonCell
@end

@interface IATMidiValuePopUpButtonCell : IATMidiPopUpButtonCell
@end

@interface IATMidiControlTypePopUpButtonCell : IATMidiPopUpButtonCell
@end

@interface IATMidiProgramNumberPopUpButtonCell : IATMidiPopUpButtonCell
@end

@interface IATMidiLsbPopUpButtonCell : IATMidiPopUpButtonCell
@end

@interface IATMidiMsbPopUpButtonCell : IATMidiPopUpButtonCell
@end
