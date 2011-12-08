//
//  MidiByte_SRT.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/6/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiByte_SRT.h"

@implementation IATMidiByte_SRT_Start

+ (NSString*)title {
    return @"System Real-Time Start";
}

+ (NSArray*)descriptions {
    return [NSArray arrayWithObject:@"0x8A System Real-Time Start"];
}

+ (NSArray*)byteValues {
    return [NSArray arrayWithObject:[NSNumber numberWithUnsignedChar:0x8A]];
}

+ (unsigned char)messageLength {
    return 1;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects: nil];
}

@end


@implementation IATMidiByte_SRT_Stop

+ (NSString*)title {
    return @"System Real-Time Stop";
}

+ (NSArray*)descriptions {
    return [NSArray arrayWithObject:@"0x8C System Real-Time Stop"];
}

+ (NSArray*)byteValues {
    return [NSArray arrayWithObject:[NSNumber numberWithUnsignedChar:0x8C]];
}

+ (unsigned char)messageLength {
    return 1;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects: nil];
}

@end


@implementation IATMidiByte_SRT_Continue

+ (NSString*)title {
    return @"System Real-Time Continue";
}

+ (NSArray*)descriptions {
    return [NSArray arrayWithObject:@"0x8B System Real-Time Continue"];
}

+ (NSArray*)byteValues {
    return [NSArray arrayWithObject:[NSNumber numberWithUnsignedChar:0x8B]];
}

+ (unsigned char)messageLength {
    return 1;
}

+ (NSArray*)messageByteClassNames {
    return [NSArray arrayWithObjects: nil];
}

@end
