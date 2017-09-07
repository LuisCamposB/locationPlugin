
var exec = require('cordova/exec');

var PLUGIN_NAME = 'locationPlugin';

var locationPlugin = {
  getLocation: function(success, failure) {
    exec(success, failure, PLUGIN_NAME, 'getLocation', []);
  }
};

module.exports = locationPlugin;