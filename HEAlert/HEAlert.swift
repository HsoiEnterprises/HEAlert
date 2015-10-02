//
//  HEAlert.swift
//
//  Created by hsoi on 2010-12-24, converted to Swift 2015-05-08
//
//  HEAnalytics - Copyright (c) 2010, 2015, Hsoi Enterprises LLC
//  All rights reserved.
//  hsoi@hsoienterprises.com
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright notice, this
//  list of conditions and the following disclaimer.
//
//  * Redistributions in binary form must reproduce the above copyright notice,
//  this list of conditions and the following disclaimer in the documentation
//  and/or other materials provided with the distribution.
//
//  * Neither the name of HEAlert nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import UIKit


/**
HEAlert - a utility class to simplify the presentation of alerts.

UIAlertController is excellent, but the complexity can be a bit much when all you need is a simple "OK" alert.
HEAlert wraps up UIAlertController, providing a simplified but expansive API to make alerts easier.

Go from this:

```
let alertController = UIAlertController(title: "Hello World", message: nil, preferredStyle: .Alert)
let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
alertController.addAction(action)
self.presentViewController(alertController, animated: true, completion: nil)
```

to this:

```
HEAlert.ok("Hello World", presentingViewController: self)
```
*/
public class HEAlert: NSObject {
    
    /**
    Presents an "OK" alert with the given title.
    
    NB: While this is the easist function to use, you should strive to avoid using it and prefer to use functions that
    take a presentingViewController. This is not an ideal and forward-looking mechanism, but is provided because sometimes
    it is what you need to solve an immediate issue.
    
    - parameter title:                       The title of the alert.
    */
    public class func ok(title: String) {
        HEAlert.showAlert(title, message: nil, buttonTitle: nil, cancelTitle: nil, presentingViewController: nil, cancelHandler: nil, buttonHandler: nil)
    }

    
    
    /**
    Presents an "OK" alert with the given title and message.
    
    NB: While this is the easist function to use, you should strive to avoid using it and prefer to use functions that
    take a presentingViewController. This is not an ideal and forward-looking mechanism, but is provided because sometimes
    it is what you need to solve an immediate issue.
    
    - parameter title:                       The title of the alert.
    - parameter message:                     The alert message.
    */
    public class func ok(title: String, message: String) {
        HEAlert.showAlert(title, message: message, buttonTitle: nil, cancelTitle: nil, presentingViewController: nil, cancelHandler: nil, buttonHandler: nil)
    }

    
    
    /**
    Presents an "OK" alert with the given title, upon the given presentingViewController.
    
    Provides for an optional closure to be executed when the OK button is tapped.
    
    - parameter title:                       The title of the alert.
    - parameter presentingViewController:    The UIViewController that will present the alert.
    - parameter buttonHandler:               An optional closure invoked in response to the user tapping the button.
    */
    public class func ok(title: String, presentingViewController: UIViewController, buttonHandler: ((UIAlertAction!) -> Void)? = nil) {
        HEAlert.showAlert(title, message: nil, buttonTitle: nil, cancelTitle: nil, presentingViewController: presentingViewController, cancelHandler: nil, buttonHandler: buttonHandler)
    }
    
    
    
    /**
    Presents an "OK" alert with the given title and message, upon the given presentingViewController.
    
    Provides for an optional closure to be executed when the OK button is tapped.

    - parameter title:                       The title of the alert.
    - parameter message:                     The alert message.
    - parameter presentingViewController:    The UIViewController that will present the alert.
    - parameter buttonHandler:               An optional closure invoked in response to the user tapping the button.
    */
    public class func ok(title: String, message: String, presentingViewController: UIViewController, buttonHandler: ((UIAlertAction!) -> Void)? = nil) {
        HEAlert.showAlert(title, message: message, buttonTitle: nil, cancelTitle: nil, presentingViewController: presentingViewController, cancelHandler: nil, buttonHandler: buttonHandler)
    }
    
    
    
    /**
    Presents an alert with the given title and custom button title, upon the given presentingViewController.
    
    Provides for an optional closure to be executed when the button is tapped.

    - parameter title:                       The title of the alert.
    - parameter buttonTitle:                 The button's title.
    - parameter presentingViewController:    The UIViewController that will present the alert.
    - parameter buttonHandler:               An optional closure invoked in response to the user tapping the button.
    */
    public class func other(title: String, buttonTitle: String, presentingViewController: UIViewController, buttonHandler: ((UIAlertAction!) -> Void)? = nil) {
        HEAlert.showAlert(title, message: nil, buttonTitle: buttonTitle, cancelTitle: nil, presentingViewController: presentingViewController, cancelHandler: nil, buttonHandler: buttonHandler)
    }
    
    
    
    /**
    Presents an alert with the given title, message, and custom button title, upon the given presentingViewController.
    
    Provides for an optional closure to be executed when the button is tapped.

    - parameter title:                       The title of the alert.
    - parameter message:                     The alert message.
    - parameter buttonTitle:                 The button's title.
    - parameter presentingViewController:    The UIViewController that will present the alert.
    - parameter buttonHandler:               An optional closure invoked in response to the user tapping the button.
    */
    public class func other(title: String, message: String, buttonTitle: String, presentingViewController: UIViewController, buttonHandler: ((UIAlertAction!) -> Void)? = nil) {
        HEAlert.showAlert(title, message: message, buttonTitle: buttonTitle, cancelTitle: nil, presentingViewController: presentingViewController, cancelHandler: nil, buttonHandler: buttonHandler)
    }
    
    
    
    /**
    Presents an alert with the given title, message, custom Cancel button title, and custom Default button title; upon the given presentingViewController.
    
    Often you need 2 buttons, one to do something and one to not do something (but still dismiss the alert). So the cancelTitle allows for a Cancel button
    (or whatever you wish to name it "Later", "No", etc.), and the buttonTitle allows for the "OK"/default button and then the optional buttonHandler,
    if provided, will be executed upon the tap to that OK/default button.
    
    - parameter title:                       The title of the alert.
    - parameter message:                     The alert message.
    - parameter buttonTitle:                 The button's title.
    - parameter cancelTitle:                 The cancel button's title
    - parameter presentingViewController:    The UIViewController that will present the alert.
    - parameter buttonHandler:               An optional closure invoked in response to the user tapping the default button.
    */
    public class func other(title: String, message: String, buttonTitle: String, cancelTitle: String, presentingViewController: UIViewController, buttonHandler: ((UIAlertAction!) -> Void)?) {
        HEAlert.showAlert(title, message: message, buttonTitle: buttonTitle, cancelTitle: cancelTitle, presentingViewController: presentingViewController, cancelHandler: nil, buttonHandler: buttonHandler)
    }
    
    

    /**
    Presents an alert with the given title, message, custom Cancel button title, and custom Default button title; upon the given presentingViewController.
    
    Often you need 2 buttons, one to do something and one do something else. So the cancelTitle allows for a Cancel button (or whatever you wish 
    to name it "Later", "No", etc.) and a cancelHandler to be invoked upon tapping that button, and the buttonTitle allows for the "OK"/default button 
    and then the optional buttonHandler will be executed, if provided, upon the tap to that OK/default button.
    
    - parameter title:                       The title of the alert.
    - parameter message:                     The alert message.
    - parameter buttonTitle:                 The button's title.
    - parameter cancelTitle:                 The cancel button's title
    - parameter presentingViewController:    The UIViewController that will present the alert.
    - parameter cancelHandler:               An optional closure invoked in response to the user tapping the cancel button.
    - parameter buttonHandler:               An optional closure invoked in response to the user tapping the button.
    */
    public class func other(title: String, message: String, buttonTitle: String, cancelTitle: String, presentingViewController: UIViewController, cancelHandler: ((UIAlertAction!) -> Void)?, buttonHandler: ((UIAlertAction!) -> Void)?) {
        HEAlert.showAlert(title, message: message, buttonTitle: buttonTitle, cancelTitle: cancelTitle, presentingViewController: presentingViewController, cancelHandler: cancelHandler, buttonHandler: buttonHandler)
    }

    
    
    /**
    Presents an "OK" alert for the given NSError, upon the given presentingViewController.
    
    The alert's title will be the localizedDescription, and the alert's message will be the localizedRecoverySuggestion.
    
    Provides for an optional closure to be executed when the "OK" button is tapped.
    
    - parameter error:                       The NSError to display.
    - parameter presentingViewController:    The UIViewController that will present the alert.
    - parameter buttonHandler:               An optional closure invoked in response to the user tapping the button.
    */
    public class func error(error: NSError, presentingViewController: UIViewController?, buttonHandler: ((UIAlertAction!) -> Void)? = nil) {
        HEAlert.showAlert(error.localizedDescription, message: error.localizedRecoverySuggestion, buttonTitle: nil, cancelTitle: nil, presentingViewController: presentingViewController, cancelHandler: nil, buttonHandler: buttonHandler)
    }
    
    
    
    /**
    Private function that actually does all of the heavy lifting.
    
    Note that for cancelTitle and buttonHandler to be honored, there must be a presentingViewController. We need the presentingViewController so we
    can have the hook to execute the buttonHandler upon tapping the main/default/OK button. And if we cannot excute some action in response to
    tapping main/default/OK button, there's no point in having an alternative "cancel" button that will do nothing.
    
    - parameter title:                       The title of the alert.
    - parameter message:                     The alert message. If no message is provided, no message is displayed.
    - parameter buttonTitle:                 The alert has a single button (default/OK), and this will be the title. If nil or empty, will default to "OK".
    - parameter cancelTitle:                 The cancel button's title. If nil or empty, will not be present (a 1 button alert). Will only be utilized if presentingViewController != nil
    - parameter presentingViewController:    The UIViewController that will present the UIAlertController. Preferred to be non-nil, but if nil will cause logic to fall back to UIAlertView (this may change depending upon Apple's future directions)
    - parameter cancelHandler:               Optional closure invoked in response to the user tapping the cancel button. Only utilized if presentingViewController != nil and cancelTitle is non-nil and non-empty. BUT perfectly acceptable to have a valid cancelTitle and a nil cancelHandler (maybe you don't want to do anything interesting upon cancel).
    - parameter buttonHandler:               Optional closure invoked in response to the user tapping the button. Only utilized if presentingViewController != nil.
    */
    private class func showAlert(title: String, message: String?, buttonTitle: String?, cancelTitle: String?, presentingViewController: UIViewController?, cancelHandler: ((UIAlertAction!) -> Void)?, buttonHandler: ((UIAlertAction!) -> Void)?) {

        // Hsoi 2015-05-08 - One useful thing about UIAlertView is you can present them from anywhere -- you don't
        // need a presenting UIViewController. While some may argue you should never show an alert from
        // a place where you don't have access to a UIViewController (e.g. from within model code), sometimes
        // reality or necessity trumps ideals and you need this ability.
        //
        // This is why the presentingViewController is optional. If you want you CAN pass nil, meaning
        // we don't have a UIViewController, but we still want to present an alert. I chose to NOT make
        // it have a default value of nil tho, so it's clear in code this is an explicit choice
        // and not just something we perhaps forgot to type.
        //
        // For now, if presentingViewController is nil, we will fall back to UIAlertView. I filed
        // rdar://problem/18297508 back in 2014-09-10 requesting some way to still be able to present
        // alerts without need for a presentingViewController, but as of this writing there's been no
        // comment or movement on it (and honestly I'm not expecting Apple will do anything about this).
        // One alternative implementation is to get the window's rootViewController, but I don't think
        // that's ideal (what if you have more than 1 window?)
        //
        // Ideally, you should pass a presentingViewController -- and this is why most of the HEAlert API makes
        // the presentingViewController non-optional. However, we contend for it, and just realize that if you
        // do use a nil presentingViewController that it may have issues, may be less than ideal, and may have to
        // go away someday and you'll then have to figure out how to (re)solve the issue into having a
        // UIViewController to present from -- thus probably best to just solve that problem now.

        var okTitle: String = NSLocalizedString("OK", comment: "Alert button title")
        if let buttonTitle = buttonTitle where !buttonTitle.isEmpty {
            okTitle = buttonTitle
        }
        
        
        if let presentingViewController = presentingViewController {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
            
            let okAction = UIAlertAction(title: okTitle, style: .Default, handler: buttonHandler)
            alertController.addAction(okAction)
            
            if let cancelTitle = cancelTitle where !cancelTitle.isEmpty {
                let cancelAction = UIAlertAction(title: cancelTitle, style: .Cancel, handler: cancelHandler)
                alertController.addAction(cancelAction)
            }
            
            presentingViewController.presentViewController(alertController, animated: true, completion: nil)
        }
        else {
            assert(buttonHandler == nil, "buttonHandler will not be executed if there's no presentingViewController")
            assert(cancelTitle == nil, "cancelTitle will not be honored since there's no way to handle a buttonHandler and thus have 2 distinct results from 2 different button taps")
            
            let alertView = UIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: okTitle)
            alertView.show()
        }
    }

}