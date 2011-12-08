//
//  MidiByte_ChannelPressure.h
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByteDescription.h"

@interface IATMidiByte_ChannelPressure : IATMidiByteDescriptionObject

+ (NSArray*)descriptions;
+ (unsigned char)messageLength;
+ (NSArray*)messageByteClassNames;

@end
