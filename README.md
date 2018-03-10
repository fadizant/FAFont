# FAFont

[![CI Status](http://img.shields.io/travis/fadizant/FAFont.svg?style=flat)](https://travis-ci.org/fadizant/FAFont)
[![Version](https://img.shields.io/cocoapods/v/FAFont.svg?style=flat)](http://cocoapods.org/pods/FAFont)
[![License](https://img.shields.io/cocoapods/l/FAFont.svg?style=flat)](http://cocoapods.org/pods/FAFont)
[![Platform](https://img.shields.io/cocoapods/p/FAFont.svg?style=flat)](http://cocoapods.org/pods/FAFont)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## How to use

Add your custom font to your project :
https://developer.apple.com/documentation/uikit/text_display_and_fonts/adding_a_custom_font_to_your_app

### Objc

```ruby
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

// Print all font names
[UIFont printFonts];

// set fonts by font name
[UIFont setRegularFontName:@"JFFlat-Regular"];
[UIFont setBoldFontName:@"JFFlat-Medium"];
[UIFont setItalicFontName:@"JFFlat-Regular"];

return YES;
}
```

### Swift4

```ruby
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

// Print all font names
UIFont.printFonts()

// set fonts by font name
UIFont.setBoldFontName("OpenSans-Bold")
UIFont.setRegularFontName("OpenSans")
UIFont.setItalicFontName("OpenSans-Italic")

return true
}
```

## Installation

FAFont is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FAFont"
```

## Author

fadizant, fadizant@hotmail.com

## License

FAFont is available under the MIT license. See the LICENSE file for more info.

