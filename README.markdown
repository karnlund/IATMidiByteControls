[Examples]: https://github.com/johnclayton/RESTClient/wiki/Examples (Examples)
[FAQ]: https://github.com/johnclayton/RESTClient/wiki/FAQ (FAQs)
[API]: http://johnclayton.github.com/RESTClient/api/html/index.html (Api Docs)
[TESTS]: https://github.com/johnclayton/RESTClient/tree/master/Tests#readme (Running the Tests)

## About

IATMidiByteControls for Cocoa and Cocoa Touch (coming) is a colleciton of controls used for constructing midi messages.  This collection of classes will be part of a greater IATMidi library of objects to process incoming midi messages and generate outgoing midi messages. 

#### Simple to use

These object were created to be simple to use.  The highest level object, the IATMidiMessageConstructorMatrix is designed to do all of the work of constructing all known midi channel based messages, as well as a few system real-time messages.

#### Cocoa & Cocoa Touch

IATMidiByteControls current support Cocoa, but they are intended to be adapted to Cocoa Touch.

#### ARC supported

IATMidiByteControls support automatic reference counting (ARC), and uses weak references.
RESTClient was also designed to be a joy to use. The primary interfaces are all implemented with blocks, so you can just forget about writing a thousand implementations of a delegate protocol or adding pointers to everything everywhere—define your intentions in a block, where you intend them, and enjoy the rest of your day. All the blocks used in the public interface are typed, so you can define them once and reuse them if you find that convenient.

#### Easy On The I's

Configuring RESTClient is, well, you don't configure RESTClient. You simply set up a base resource for each service you wish to use and nested resources will automatically inherit the information from their parents. You don't need to configure anything to create those nested resources either. By passing in an object or format string and arguments to any resource, you can create a child resource ready to go. If you need to, you can override any inherited setting in a child resource.

#### Willing to Try New Things

RESTClient handles the most common cases for you, but provides well defined interfaces to easily extend its functionality if you need to. There are protocols for authentication that will allow you to plug in to any kind of auth system, and for mime-type handling, to let you serialize/deserialize resources to and from any kind of encoding.

#### Seeking An OS For Long Walks On The Beach

RESTClient was implemented with automatic reference counting (ARC) and uses weak references, as well as new NSURLConnection APIs, so it requires iOS 5 and/or Mac OS 10.7.


## Including in Your Project

The simplest way to use RESTClient in your Xcode project is to just copy the files in "Source" to your own project.

The best way to include RESTClient is to drag the project into your workspace,  add libRESTClient.a to your main target's link phase and the Source dir ($(SRCROOT)/../RESTClient/Source/**) to your header search paths.

That's it. There is detailed help in the [FAQ][] if you need more information about how to set up your workspace.


## Documentation

[Examples][]  
[FAQ][]  
[API][]  
[TESTS][]  


## Basic Usage

The most common way to use RESTClient is to set up a base resource and some children, define a couple blocks and start making requests. 

#### Set up a base resource

```objective-c 
RCResource *site = [RCResource withURL:@"http://example.com"];
site.timeout = 20;
site.headers = [NSDictionary dictionaryWithObjectsAndKeys:
				@"foo",@"X-MyCustomHeader"
				, nil];
site.contentType = RESTClientContentTypeJSON;
site.username = @"foo";
site.password = @"bar";
```
Usually, you would store this somewhere you could access from anywhere in your app, like your app delegate or a singleton.
	
#### Configure some child resources and start using them

_Get stuff_

```objective-c 	
RCResource *posts = [site resource:@"posts"];
[posts getWithCompletionBlock:^(RCResponse *response) {
	postsController.posts = response.result;
}];
```

_Create stuff_

```objective-c 	
RCProgressBlock postProgressBlock = ^(NSDictionary *progressInfo) {
	postProgressView.progress = [[progressInfo objectForKey:kRESTClientProgressInfoKeyProgress] floatValue];
};

NSDictionary *postData = ...;
RCResource *firstPost = [posts resource:[NSNumber numberWithInt:1]];
[firstPost post:postData progressBlock:postProgressBlock completionBlock:^(RCResponse *response) {
	if (response.success) {
		[postsController addPost:postData];
	}
}];
```

_Map stuff_

```objective-c 	
RCResource *user123 = [site resourceWithFormat:@"users/%@",[NSNumber numberWithInt:123]];
__block MyUserClass *user;
[user123 getWithCompletionBlock:^(RCResponse *response) {
	if (response.success) {
		user = [MyUserClass withUserData:response.result];
	}
}];
```

_Protect stuff_

```objective-c 	
RCResource *admin = [site resource:@"admin"];
admin.preflightBlock = ^(RCRequest * request){
	if (NO == [accountController isAuthorized:request]) {
		NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@"You need to log in to see this" forKey:NSLocalizedDescriptionKey];
		[errorReporter report:[NSError errorWithDomain:@"MyDomain" code:-1 userInfo:userInfo]];
		return NO;
	}
	return YES;
};
```

_Download stuff directly to disk_

```objective-c 	
RCResource *images = [site resource:@"images"];
[images downloadWithProgressBlock:nil completionBlock:^(RCResponse *response) {
	NSURL *downloadedFile = [response.result valueForKey:kRESTClientProgressInfoKeyTempFileURL];
	// Move the file to where you want it
}
```


RESTClient does even more, like direct from disk uploads and post-processing on a background thread (great for core data mapping), See more detailed examples in  the [Examples][].
 