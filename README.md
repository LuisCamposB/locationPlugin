# locationPlugin
cordova-iOS plugin to get location via CoreLocation

# Functions 

## getLocation

This method asks for a success callback function which returns the coordinates as an array of type [String *Lat,String *Long] and a failure callback function as a string "Location not found"

# Usage 

to use, simply call the plugin function. E.g.

´´´
function successCallbackFunc(msg) {
	alert("Your coords are: " + msg)
}
function failureCallbackFunc(msg) {
	alert(msg)
}

function getLocation() {
	locationPlugin.getLocation(successCallbackFunc,failureCallbackFunc)
}
´´´