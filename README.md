# Identify #

Create compact, unique identifiers in iOS.

[![Version](http://cocoapod-badges.herokuapp.com/v/Identify/badge.png)](http://cocoadocs.org/docsets/Identify)
[![Platform](http://cocoapod-badges.herokuapp.com/p/Identify/badge.png)](http://cocoadocs.org/docsets/Identify)
[![Build Status](https://travis-ci.org/weaver/Identify.png?branch=master)](https://travis-ci.org/weaver/Identify)

## Features ##

+ Compact, urlsafe encoding
+ UUIDs
+ Device ID
+ Synthesize IDs with a hash

## Installation ##

Identify is available through [CocoaPods](http://cocoapods.org), to
install it, add the following line to your Podfile:

    pod 'Identify', '~> 0.1.2'

## Examples ##

To generate a UUID, use the `makeId` method. A fresh UUID is generated
and encoded as urlsafe-base64 into a 23 character `NSString`.

    [Identify makeId]

The device's `advertisingIdentifier` can be encoded in a similar way:

    [Identify deviceId]

Sometimes it's helpful to create an id deterministically. For example,
you may want a deterministic way to uniquely identify a many-to-many
relationship with a single key:

    [Identify synthesizeId:[fromObj identity], [toObj identity], nil]

## Documentation ##

+ [Reference Documentation](http://cocoadocs.org/docsets/Identify)

## License ##

Identify is available under the MIT license. See the LICENSE file for
more info.
