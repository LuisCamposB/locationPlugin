#import "locationPlugin.h"

#import <Cordova/CDVAvailability.h>
#import <CoreLocation/CoreLocation.h>

@implementation locationPlugin

CLLocationManager *locationManager;


- (void)pluginInitialize {
  
  locationManager = [[CLLocationManager alloc] init];
  locationManager.distanceFilter = kCLDistanceFilterNone;
  locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
  [locationManager requestAlwaysAuthorization];
  [locationManager startUpdatingLocation];


}

- (void)getLocation:(CDVInvokedUrlCommand *)command {
  NSLog(@"Getting location");
  CDVPluginResult *pluginResult;
  float Lat = locationManager.location.coordinate.latitude;
  float Long = locationManager.location.coordinate.longitude;
  NSLog(@"Lat : %f  Long : %f",Lat,Long);
  
  NSArray *locationArr = [NSArray arrayWithObjects:[NSNumber numberWithFloat:Lat],[NSNumber numberWithFloat:Long], nil];
  
  if (Lat != 0 && Long != 0) {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:locationArr];
  } else {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"location not found"];
  }
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


@end
