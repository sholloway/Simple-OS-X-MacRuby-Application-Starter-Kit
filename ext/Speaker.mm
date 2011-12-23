#import <Foundation/Foundation.h>
#import <Speaker.h>
#import "Speaker.h"

@implementation Speaker
	- (id)init
	{	
	    self = [super init];	
	    if (self) {
			//init class level variables
		}		
		return self;
	}
	
	- (void) dealloc
	{
		[super dealloc];
	}
	
	-(void)speak
	{
		NSLog(@"I am an instance of an Objective-C++ class");
	}
@end