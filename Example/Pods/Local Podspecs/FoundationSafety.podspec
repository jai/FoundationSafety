Pod::Spec.new do |s|
  s.name             = "FoundationSafety"
  s.version          = File.read('VERSION')
  s.summary          = "A collection of safety categories for Foundation - mainly focused on collections."
  s.description      = <<-DESC
  
  Foundation Safety
=========

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

If I've done my job and submitted this to Cocoapods, you should just be able to install with:

```sh
pod install FoundationSafety
```

otherwise there's always submodules :)

License
----

MIT


**Free Software, Hell Yeah!**
DESC
  s.homepage         = "https://github.com/jai/FoundationSafety"
  s.license          = 'MIT'
  s.author           = { "Jai Govindani" => "govindani@gmail.com" }
  s.source           = { :git => "https://github.com/jai/FoundationSafety.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/govindani'

  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.resources = 'Assets/*.png'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
end
