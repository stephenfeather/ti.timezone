/**
 * ti.timezone
 *
 * Created by Stephen Feather
 * Copyright (c) 2016 Stephen Feather. All rights reserved.
 */

#import "TiTimezoneModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation TiTimezoneModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"860c24a2-aafc-4f96-8a48-6dc3610934f0";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"ti.timezone";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(id)localTimeZone
{
	return [[NSTimeZone localTimeZone] name];
}

-(id)systemTimeZone
{
	return [[NSTimeZone systemTimeZone] name];
}

-(id)defaultTimeZone
{
	return [[NSTimeZone defaultTimeZone] name];
}

-(id)knownTimeZoneNames
{
	return [NSTimeZone knownTimeZoneNames];
}

@end
