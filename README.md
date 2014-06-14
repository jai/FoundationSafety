# FoundationSafety

[![Version](https://img.shields.io/cocoapods/v/FoundationSafety.svg?style=flat&cache_dummy_version=1)](http://cocoadocs.org/docsets/FoundationSafety)
[![License](https://img.shields.io/cocoapods/l/FoundationSafety.svg?style=flat&cache_dummy_version=1)](http://cocoadocs.org/docsets/FoundationSafety)
[![Platform](https://img.shields.io/cocoapods/p/FoundationSafety.svg?style=flat&cache_dummy_version=1)](http://cocoadocs.org/docsets/FoundationSafety)

A collection of categories designed to make working with Foundation collections safer.

Who here hasn't caused a crash in production because of an out of bounds exception on an NSArray, or a valueForUndefinedKey for an NSDictionary? I'm not a huge fan of constantly having to type

```objc
if (theIndexIWantToAccess < theArrayImUsing.count) {
    //Now I'm safe
} else {
    //I would have crashed here
}
```

Call me lazy, be a hater, just know that these categories aren't meant to replace writing correct code. These categories are predicated on the fact that *we make mistakes* and these mistakes should be learned from while not crashing production apps.

*This means that some remote logging should probably be set up so that we can actually learn from the times these categories prevent a crash.*

These categories currently contain safety methods for:
- NSArray / NSMutableArray
- NSDictionary / NSMutableDictionary
- NSObject (just to support the items above)

Installation
--------------

Default installation is of course by Cocoapods:

```sh
pod install FoundationSafety
```

otherwise there's always submodules :)

License
----

MIT

**Free Software, Hell Yeah!**


