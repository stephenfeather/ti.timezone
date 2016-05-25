# ti.timezone Module

## Description

Needed access to iOS system time information

## Accessing the ti.timezone Module

To access this module from JavaScript, you would do the following:

    var TimeZone = require("ti.timezone");

The TimeZone variable is a reference to the Module object.

## Properties

### defaultTimeZone

The default time zone for the current application. If no default time zone has been set, this property returns the systemTimeZone.

```javascript
TimeZone.defaultTimeZone
```

### systemTimeZone

The time zone currently used by the system. If the current time zone cannot be determined, returns the GMT time zone.

```javascript
TimeZone.systemTimeZone
```

### localTimeZone

The local time zone represents the current state of the default time zone at all times.

```javascript
TimeZone.localTimeZone
```

### knownTimeZoneNames

An array of strings listing the IDs of all the time zones known to the system.

```javascript
TimeZone.knownTimeZoneNames
```

## Author

Stephen Feather
@stephenfeather

## License

Copyright 2016 Stephen Feather

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
