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
//add it in AppDelegate initialize
+ (void)initialize {
    if (self == AppDelegate.self) {
        // Print all font names
        [UIFont printFonts];

        // set fonts by font name
        [UIFont setRegularFontName:@"JFFlat-Regular"];
        [UIFont setBoldFontName:@"JFFlat-Medium"];
        [UIFont setItalicFontName:@"JFFlat-Regular"];
    }
}
```

### Swift4

```ruby
//add it in AppDelegate initialize
override init() {
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

fadizant, fadizant@gmail.com

## License

FAFont is available under the MIT license. See the LICENSE file for more info.

