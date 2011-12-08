//
//  MidiMessagePopUpButton.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import <AppKit/AppKit.h>

#pragma mark - Dynamic midi byte popup that can switch represented byte descriptions
@interface IATMidiBytePopUpButton : NSPopUpButton 
@end

#pragma mark - Base Class to all specific byte popups
@interface IATMidiPopUpButton : NSPopUpButton
@end

#pragma mark - All midi command bytes
@interface IATMidiMessagePopUpButton : IATMidiPopUpButton
@end

#pragma mark - Midi command byte popups
@interface IATMidiNoteOffPopUpButton : IATMidiPopUpButton
@end

@interface IATMidiNoteOnPopUpButton : IATMidiPopUpButton
@end

@interface IATMidiPolyphonicKeyPressurePopUpButton : IATMidiPopUpButton
@end

@interface IATMidiControlChangePopUpButton : IATMidiPopUpButton
@end

@interface IATMidiProgramChangePopUpButton : IATMidiPopUpButton
@end

@interface IATMidiChannelPressurePopUpButton : IATMidiPopUpButton
@end

@interface IATMidiPitchWheelChangePopUpButton : IATMidiPopUpButton
@end

@interface IATMidiSRTStartPopUpButton : IATMidiPopUpButton
@end

@interface IATMidiSRTStopPopUpButton : IATMidiPopUpButton
@end

@interface IATMidiSRTContinuePopUpButton : IATMidiPopUpButton
@end

#pragma mark - Midi value byte popups
@interface IATMidiNotePopUpButton : IATMidiPopUpButton
@end

@interface IATMidiVelocityPopUpButton : IATMidiPopUpButton
@end

@interface IATMidiValuePopUpButton : IATMidiPopUpButton
@end

@interface IATMididControlTypePopUpButton : IATMidiPopUpButton
@end

@interface IATMidiProgramNumberPopUpButton : IATMidiPopUpButton
@end

@interface IATMidiLsbPopUpButton : IATMidiPopUpButton
@end

@interface IATMidiMsbPopUpButton : IATMidiPopUpButton
@end


