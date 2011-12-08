//
//  MidiMessageConstructorMatrix.m
//  Midi Tests
//
//  Created by Kurt Arnlund on 12/7/11.
//  Copyright (c) 2011 Ingenious Arts and Technologies LLC. All rights reserved.
//

#import "IATMidiMessageConstructorMatrix.h"
#import "IATMidiBytePopUpButtonCell.h"
#import "MidiBytes.h"

@implementation IATMidiMessageConstructorMatrix

- (void)setup {
    [self setPrototype: [[IATMidiBytePopUpButtonCell alloc] init]];
    [[self cells] makeObjectsPerformSelector:@selector(setTarget:) withObject:self];
    [[self cells] makeObjectsPerformSelector:@selector(setActionFromString:) withObject:@"messageSelected:"];
    [self messageSelected:self];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)growToEncompassCells {
    NSRect originalFrame = self.frame;
    
    [self sizeToCells];
    NSRect newFrame = self.frame;
    [self setFrameSize: newFrame.size];
    
    if (newFrame.size.height != originalFrame.size.height) {
        [self setFrameOrigin: NSMakePoint( originalFrame.origin.x, originalFrame.origin.y - (newFrame.size.height - originalFrame.size.height) )];
    }
}

- (void)rightMouseDown:(NSEvent *)theEvent {
    // This makes sure that a cell that is right clicked will be selected so
    // that the action message (messageSelected:) will be able to determine
    // which cell was operated on.
    // Left click already does this automatically.
    NSPoint mouseLocation = [self convertPoint: [theEvent locationInWindow]  fromView: nil];
    NSInteger col, row;
    [self getRow:&row column:&col forPoint:mouseLocation];
    NSCell * overCell = [self cellAtRow:row column:col];
    [self selectCell:overCell];
    [super rightMouseDown:theEvent];
}

- (IBAction)messageSelected:(id)sender {
    [self selectCell:sender];
    
    // establish what we know about the selected byte cell and
    // the type of midi command message that it is a part of.
    id sendingCell = [sender selectedCell];
    if (!sendingCell)
        sendingCell = [sender cellAtRow:0 column:0]; 
    id midiByteDescriptorClass = [sendingCell representedObject];
    id midiCommandCell = [sender cellAtRow:0 column:0];
    id midiCommandDescriptorClass = [midiCommandCell representedObject];
    NSUInteger commandIdx = [midiCommandCell indexOfSelectedItem];
    NSUInteger messageIdx = [sendingCell indexOfSelectedItem];
    NSUInteger matrixRow = [[sender cells] indexOfObject: sendingCell];
    if (matrixRow == -1)
        matrixRow = 0;

    id midiByteClass = midiByteDescriptorClass;
    if ([midiByteClass composedOfByteDescriptorObjects])
        midiByteClass = [midiByteDescriptorClass byteClassAtIndex: messageIdx];
    
    id midiCommandByteClass = midiCommandDescriptorClass;
    if ([midiCommandByteClass composedOfByteDescriptorObjects])
        midiCommandByteClass = [midiCommandByteClass byteClassAtIndex: commandIdx];
    
    NSUInteger disableAtRow = [midiCommandByteClass messageLength];
    BOOL changedRowCount = NO;

    NSArray * followingCells = [sender cells];
    
    // gather info about what message bytes should follow, add cells
    // to accomodate those bytes, and configure the cell drop down contents.  
    unsigned char followingByteCount = [midiByteClass messageLength] - 1;
    if (followingByteCount) {
        NSArray * messageByteClasses = [midiByteClass messageByteClasses];

        for (id cellClass in messageByteClasses) {
            NSUInteger row = matrixRow + [messageByteClasses indexOfObject: cellClass] + 1;

            id cell = nil;
            if (row < followingCells.count)
                cell = [followingCells objectAtIndex: row];
            if (!cell) {
                [sender addRow];
                cell = [followingCells objectAtIndex: row];
                if (cell)
                    changedRowCount = YES;
                [cell setTarget:self];
                [cell setAction:@selector(messageSelected:)];
            }
            
            [cell setupWithClass: cellClass];
            [cell setEnabled:YES];
        }
    }

    // safely remove any cells that are no longer used.
    for (NSInteger cellIdx = [sender numberOfRows]-1; cellIdx > 0; cellIdx--) {
        NSCell * followingCell = [followingCells objectAtIndex: cellIdx];
        NSUInteger cellRow = [followingCells indexOfObject:followingCell];
        
        if (cellRow >= disableAtRow) {
            [sender removeRow: cellIdx];
            changedRowCount = YES;
        }
    }
    
    // grow the matrix to accomodate the current list of byte cells.
    if (changedRowCount) {
        [self growToEncompassCells];
        // select cell zero because we may have removed the selected cell
        // actually this is impossible currently, but this still seems like a
        // safe assumption.
        [self selectCell: [[self cells] objectAtIndex:0]];
    }    
}

@end
