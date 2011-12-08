//
//  MidiByte_LsbMsb.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByteDescription.h"

@interface IATMidiByte_LSB : IATMidiByteDescriptionObject

+ (NSArray*)descriptions;
+ (unsigned char)messageLength;
+ (NSArray*)messageByteClassNames;

@end


@interface IATMidiByte_MSB : IATMidiByteDescriptionObject

+ (NSArray*)descriptions;
+ (unsigned char)messageLength;
+ (NSArray*)messageByteClassNames;

@end
