//
//  MidiByte_PitchWheelChange.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByteDescription.h"

@interface IATMidiByte_PitchWheelChange : IATMidiByteDescriptionObject

+ (NSArray*)descriptions;
+ (unsigned char)messageLength;
+ (NSArray*)messageByteClassNames;

@end
