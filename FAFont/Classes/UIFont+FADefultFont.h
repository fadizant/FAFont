//
//  UIFont+FADefultFont.h
//  Kazoz
//
//  Created by Fadi on 23/2/16.
//  Copyright © 2016 apprikot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (FADefultFont)

+(void)setRegularFontName:(NSString*)fontName;
+(void)setBoldFontName:(NSString*)fontName;
+(void)setItalicFontName:(NSString*)fontName;
+(void)printFonts;

@end
