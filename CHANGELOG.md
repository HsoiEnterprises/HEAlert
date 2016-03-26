# HEAlert CHANGELOG

## v0.5.2 - 2016-03-26

* Verified against Xcode 7.3 and Swift 2.2 (no changes made, just verified)
* HEAlert inherits from `NSObject` so it can be bridged into Objective-C code
* Fixed codesigning (thanx to @jlandon)

## v0.5.1 - 2015-09-12

* Minor adjustments for Xcode 7 and Cocoapods.


## v0.5 - 2015-09-12

**NB: Now requires Xcode 7 and Swift 2.**

### Added

* Project file, to enable stand-alone building of HEAlert.framework
* travis-ci support

### Changed

* Conformance with Xcode 7 and Swift 2
* Merged stand-alone sample project into the main .xcodeproj file as a secondary target.


## v0.4.2 - 2015-06-24

### Added

* public declarations

### Fixed

* cleaned up copyright notice

### Improved

* README
* inline docs


## v0.4.1 - 2015-06-23

### Fixed

* Some stray README notes


## v0.4 - 2015-06-23

### Added

* Cocoapods support


## v0.3 - 2015-06-25

### Changed

* Expanding HEAlert to add cancel mechanisms and further flesh out the API.


## v0.2 - 2015-05-12

### Added

* `ok(title, message)`


## v0.1 - 2015-05-08

Initial release.

`HEAlert` existed prior to this, but things brought a conversion to Swift and public release.
