//
//  MidiByte_Velocity.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_Velocity.h"

@implementation IATMidiByte_Velocity

+ (NSString*)title {
    return @"velocity";
}

+ (NSArray*)descriptions {
    return [IATMidiByteDescription valuesForRange:NSMakeRange(0, 128)
                               withDescription:[self title]];
}

+ (NSArray*)byteValues {
    return [IATMidiByteDescription normalByteValueRange];
}

+ (unsigned char)messageLength {
    return 1;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects: nil];
}

@end
