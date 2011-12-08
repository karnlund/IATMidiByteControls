//
//  MidiBytePopUpButtonCell.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/7/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import <AppKit/AppKit.h>

#pragma mark - MidiBytePopUpButtonCell : Programmable universal cell
@interface MidiBytePopUpButtonCell : NSPopUpButtonCell

- (void)setupWithClass:(Class)cellClass;
- (void)setupWithClassName:(NSString*)className;

- (id)initTextCell:(NSString *)stringValue pullsDown:(BOOL)pullDown;
- (id)initTextCell:(NSString *)stringValue midiByteClassName:(NSString*)className;

@end

#pragma mark - MidiPopUpButtonCell : Base class for specific cells
@interface MidiPopUpButtonCell : NSPopUpButtonCell

@end

#pragma mark - Specific cells
@interface MidiMessagePopUpButtonCell : MidiPopUpButtonCell

@end

@interface MidiNotePopUpButtonCell : MidiPopUpButtonCell

@end

@interface MidiVelocityPopUpButtonCell : MidiPopUpButtonCell

@end

@interface MidiValuePopUpButtonCell : MidiPopUpButtonCell

@end

@interface MididControlTypePopUpButtonCell : MidiPopUpButtonCell

@end

@interface MidiProgramNumberPopUpButtonCell : MidiPopUpButtonCell

@end

@interface MidiLsbPopUpButtonCell : MidiPopUpButtonCell

@end

@interface MidiMsbPopUpButtonCell : MidiPopUpButtonCell

@end
