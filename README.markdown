[Examples]: https://github.com/karnlund/IATMidiByteControls/wiki/Examples (Examples)
[FAQ]: https://github.com/karnlund/IATMidiByteControls/wiki/FAQ (FAQs)
[API]: http://github.com/karnlund/IATMidiByteControls/wiki/API (Api Docs)

## About

IATMidiByteControls for Cocoa and Cocoa Touch (coming) is a colleciton of controls used for constructing midi messages.  This collection of classes will be part of a greater IATMidi library of objects to process incoming midi messages and generate outgoing midi messages. 

#### Simple to use

These object were created to be simple to use.  The highest level object, the IATMidiMessageConstructorMatrix is designed to do all of the work of constructing all known midi channel based messages, as well as a few system real-time messages.

#### Cocoa & Cocoa Touch

IATMidiByteControls currently supports only Cocoa, but they are intended to be adapted to Cocoa Touch (iOS).

#### ARC supported

IATMidiByteControls support automatic reference counting (ARC), and uses weak references.

## Using in Your Project

For the time being I recommend just copying the IATMidi*.h / .m files to your project.  There is really no need for any other files.  Eventually this will be a static library.

In your interface file, create an NSPopUpButton or NSPopUpButtonCell, then change that objects class type to one of the IATMidiByteControl class types.  These controls simply remove any pop up list contents set in Xcode, and replace them with midi messages described in a very consistent detail.

## Documentation

[Examples][]  
[FAQ][]  
[API][]  


## Basic Usage


 