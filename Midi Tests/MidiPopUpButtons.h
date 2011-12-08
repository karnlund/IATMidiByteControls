//
//  MidiMessagePopUpButton.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import <AppKit/AppKit.h>

#pragma mark - Dynamic midi byte popup that can switch represented byte descriptions
@interface MidiBytePopUpButton : NSPopUpButton 
@end

#pragma mark - Base Class to all specific byte popups
@interface MidiPopUpButton : NSPopUpButton
@end

#pragma mark - All midi command bytes
@interface MidiMessagePopUpButton : MidiPopUpButton
@end

#pragma mark - Midi command byte popups
@interface MidiNoteOffPopUpButton : MidiPopUpButton
@end

@interface MidiNoteOnPopUpButton : MidiPopUpButton
@end

@interface MidiPolyphonicKeyPressurePopUpButton : MidiPopUpButton
@end

@interface MidiControlChangePopUpButton : MidiPopUpButton
@end

@interface MidiProgramChangePopUpButton : MidiPopUpButton
@end

@interface MidiChannelPressurePopUpButton : MidiPopUpButton
@end

@interface MidiPitchWheelChangePopUpButton : MidiPopUpButton
@end

@interface MidiSRTStartPopUpButton : MidiPopUpButton
@end

@interface MidiSRTStopPopUpButton : MidiPopUpButton
@end

@interface MidiSRTContinuePopUpButton : MidiPopUpButton
@end

#pragma mark - Midi value byte popups
@interface MidiNotePopUpButton : MidiPopUpButton
@end

@interface MidiVelocityPopUpButton : MidiPopUpButton
@end

@interface MidiValuePopUpButton : MidiPopUpButton
@end

@interface MididControlTypePopUpButton : MidiPopUpButton
@end

@interface MidiProgramNumberPopUpButton : MidiPopUpButton
@end

@interface MidiLsbPopUpButton : MidiPopUpButton
@end

@interface MidiMsbPopUpButton : MidiPopUpButton
@end


