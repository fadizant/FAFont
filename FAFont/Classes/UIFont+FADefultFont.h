//
//  UIFont+FADefultFont.h
//
//
//  Created by Fadi on 23/2/16.
//  Copyright © 2016 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (FADefultFont)

/**
 *   @brief  Set normat text font style
 *
 *   @param  Normat font file name
 *
 *   @return void
 *
 */
+(void)setRegularFontName:(NSString*)fontName;

/**
 *   @brief  Set bold text font style
 *
 *   @param  Bold font file name
 *
 *   @return void
 *
 */
+(void)setBoldFontName:(NSString*)fontName;

/**
 *   @brief  Set italic text font style
 *
 *   @param  Italic font file name
 *
 *   @return void
 *
 */
+(void)setItalicFontName:(NSString*)fontName;

/**
 *   @brief  Print all fonts name with family in debug area
 *
 *   @param  none
 *
 *   @return void
 *
 */
+(void)printFonts;

@end
