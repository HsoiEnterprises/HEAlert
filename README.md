# HEAlert
A convenience around `UIAlertController`, because sometimes you just want to say "OK".


# Background and Approach

`UIAlertController` is awesome, but sometimes it's too much. How many times do you want to simply alert with a message and an "OK" button? Somewhat easy with `UIAlertView`, certainly cumbersome with `UIAlertController`, but simple with `HEAlert`.

That's why I created `HEAlert`.

Go from:

```swift
  let alertView = UIAlertView(title: "Hello World", message: nil, delegate: nil, cancelButtonTitle: "OK")
  alertView.show()
```

or:

```swift
let alertController = UIAlertController(title: "Hello World", message: nil, preferredStyle: .Alert)
let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
alertController.addAction(action)
self.presentViewController(alertController, animated: true, completion: nil)
```

**to:**

```swift
HEAlert.ok("Hello World")
```

or:

```swift
HEAlert.ok("Hello World", presentingViewController: self)
```

# Supported OS and SDK

Developed with

- Xcode 6.4
- Swift 1.2
- iOS 8 (minimum, required)


# Installation

## Submodule

You can easily obtain git as a submodule, and simply add `HEAlert.swift` to your project. Off you go!

## Cocoapods

[CocoaPods][CocoaPods] is a dependency manager for Cocoa projects.

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate HEAlert into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'HEAlert'
```

Then, run the following command:

```bash
$ pod install
```


# Usage

Usage is fairly straightforward, and the code is fully documented. There's also an example application that demonstrates a simple usage of the class.

## Simple OK alert

```swift
HEAlert.ok("Hello World")
```

or:

```swift
HEAlert.ok("Hello World", presentingViewController: self)
```

## OK with Message

```swift
HEAlert.ok("Hello World", message: "This is my first HEAlert", presentingViewController: self)
```

## More Complicated

You can customize a fair portion of the `HEAlert` behaviors:

```swift
HEAlert.other("Do you like waffles?", message: "This is an important question", buttonTitle: "Yes", cancelTitle: "No", presentingViewController: self, cancelHandler: { (_) -> Void in
    println("Must like pancakes instead")
}) { (_) -> Void in
    println("Get the syrup!")
}
```

## NSError

Easy display of an `NSError`:

```swift
HEAlert.error(anNSError, presentingViewController: self, buttonHandler: nil)
```

# Contact

## Hsoi Enterprises
- [Website][hsoienterprises-website]
- [Facebook][hsoienterprises-facebook]
- [Twitter (@HsoiEnterprises)][hsoienterprises-twitter]

## Creator
- John C. Daub [(@hsoi)][hsoi-twitter]

# License

BSD 3-clause “New” or “Revised” License. See included "License" file.


[hsoienterprises-website]: http://www.hsoienterprises.com
[hsoienterprises-facebook]: https://www.facebook.com/HsoiEnterprises
[hsoienterprises-twitter]: http://twitter.com/hsoienterprises
[hsoi-twitter]: http://twitter.com/hsoi
[cocoapods]: http://cocoapods.org
