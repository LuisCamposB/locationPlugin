#import <Cordova/CDVPlugin.h>
#import <CoreLocation/CoreLocation.h>

@interface locationPlugin : CDVPlugin <CLLocationManagerDelegate> {
  
}

// The hooks for our plugin commands
- (void)getLocation:(CDVInvokedUrlCommand *)command;

@end
