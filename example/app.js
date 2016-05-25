var TimeZone = require('ti.timezone');

console.log('localTimeZone: ', TimeZone.localTimeZone);
console.log('systemTimeZone: ', TimeZone.systemTimeZone);
console.log('defaultTimeZone: ', TimeZone.defaultTimeZone);
console.log('knownTimeZoneNames: ', TimeZone.knownTimeZoneNames);

// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
win.open();
