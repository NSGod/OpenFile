//
//  main.m
//  OpenFile
//
//  Created by Mark Douma on 10/25/2021.
//

#import <Cocoa/Cocoa.h>


#define MD_DEBUG 1

#if MD_DEBUG
#define MDLog(...) NSLog(__VA_ARGS__)
#else
#define MDLog(...)
#endif


@interface Window : NSWindow <NSApplicationDelegate>

- (BOOL)application:(NSApplication *)sender openFile:(NSString *)filename;

@end

@implementation Window

- (BOOL)application:(NSApplication *)sender openFile:(NSString *)filename {
	MDLog(@"[%@ %@] Opened by file", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
	return YES;
}

@end


int main(int argc, const char * argv[]) {
	[NSApplication sharedApplication];
	Window *window = [[[Window alloc] init] autorelease];
	NSApp.delegate = window;
	[window makeKeyAndOrderFront:nil];
	[NSApp run];
	return 0;
}
