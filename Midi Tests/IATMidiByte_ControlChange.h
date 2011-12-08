//
//  MidiBytpe_ControlChange.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByteDescription.h"

@interface IATMidiByte_ControlChange : IATMidiByteDescriptionObject

+ (NSArray*)descriptions;
+ (unsigned char)messageLength;
+ (NSArray*)messageByteClassNames;

@end
