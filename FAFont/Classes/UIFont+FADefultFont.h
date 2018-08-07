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
 *   @brief  Set Normat text font style
 *
 */
+(void)setRegularFontName:(NSString*)fontName;

/**
 *   @brief  Set Bold text font style
 */
+(void)setBoldFontName:(NSString*)fontName;

/**
 *   @brief  Set Italic text font style
 */
+(void)setItalicFontName:(NSString*)fontName;

/**
 *   @brief  Set UltraLight text font style
 */
+(void)setUltraLightFontName:(NSString*)fontName;

/**
 *   @brief  Set Thin text font style
 */
+(void)setThinFontName:(NSString*)fontName;

/**
 *   @brief  Set Light text font style
 */
+(void)setLightFontName:(NSString*)fontName;

/**
 *   @brief  Set Medium text font style
 */
+(void)setMediumFontName:(NSString*)fontName;

/**
 *   @brief  Set Demi (Semibold) text font style
 */
+(void)setDemiFontName:(NSString*)fontName;

/**
 *   @brief  Set Heavy text font style
 */
+(void)setHeavyFontName:(NSString*)fontName;

/**
 *   @brief  Print all fonts name with family in debug area
 */
+(void)printFonts;

@end
