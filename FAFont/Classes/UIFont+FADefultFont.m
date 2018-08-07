//
//  UIFont+FADefultFont.m
//  
//
//  Created by Fadi on 23/2/16.
//  Copyright © 2016 . All rights reserved.
//

#import "UIFont+FADefultFont.h"
#import <objc/runtime.h>

@implementation UIFont (FADefultFont)

static NSString * FARegularFontName ;
static NSString * FABoldFontName ;
static NSString * FAItalicFontName ;
static NSString * FAUltraLightFontName ;
static NSString * FAThinFontName ;
static NSString * FALightFontName ;
static NSString * FAMediumFontName ;
static NSString * FADemiFontName ;
static NSString * FAHeavyFontName ;

+(void)setRegularFontName:(NSString*)fontName{FARegularFontName = fontName;}
+(void)setBoldFontName:(NSString*)fontName{FABoldFontName = fontName;}
+(void)setItalicFontName:(NSString*)fontName{FAItalicFontName = fontName;}
+(void)setUltraLightFontName:(NSString*)fontName{FAUltraLightFontName = fontName;}
+(void)setThinFontName:(NSString*)fontName{FAThinFontName = fontName;}
+(void)setLightFontName:(NSString*)fontName{FALightFontName = fontName;}
+(void)setMediumFontName:(NSString*)fontName{FAMediumFontName = fontName;}
+(void)setDemiFontName:(NSString*)fontName{FADemiFontName = fontName;}
+(void)setHeavyFontName:(NSString*)fontName{FAHeavyFontName = fontName;}

+(void)printFonts
{
    for (NSString* family in [UIFont familyNames]) {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family]) {
            NSLog(@"  %@", name);
        }
    }
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
+ (void)replaceClassSelector:(SEL)originalSelector withSelector:(SEL)modifiedSelector {
    Method originalMethod = class_getClassMethod(self, originalSelector);
    Method modifiedMethod = class_getClassMethod(self, modifiedSelector);
    method_exchangeImplementations(originalMethod, modifiedMethod);
}

+ (void)replaceInstanceSelector:(SEL)originalSelector withSelector:(SEL)modifiedSelector {
    Method originalDecoderMethod = class_getInstanceMethod(self, originalSelector);
    Method modifiedDecoderMethod = class_getInstanceMethod(self, modifiedSelector);
    method_exchangeImplementations(originalDecoderMethod, modifiedDecoderMethod);
}

+ (UIFont *)regularFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FARegularFontName size:size];
}

+ (UIFont *)boldFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FABoldFontName && ![FABoldFontName isEqualToString:@""] ? FABoldFontName : FARegularFontName size:size];
}

+ (UIFont *)italicFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:FAItalicFontName && ![FAItalicFontName isEqualToString:@""] ? FAItalicFontName : FARegularFontName size:size];
}

+ (UIFont *)ultraLightFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FAUltraLightFontName && ![FAUltraLightFontName isEqualToString:@""] ? FAUltraLightFontName : FARegularFontName size:size];
}

+ (UIFont *)thinFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FAThinFontName && ![FAThinFontName isEqualToString:@""] ? FAThinFontName : FARegularFontName size:size];
}

+ (UIFont *)lightFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FALightFontName && ![FALightFontName isEqualToString:@""] ? FALightFontName : FARegularFontName size:size];
}

+ (UIFont *)mediumFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FAMediumFontName && ![FAMediumFontName isEqualToString:@""] ? FAMediumFontName : FARegularFontName size:size];
}

+ (UIFont *)demiFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FADemiFontName && ![FADemiFontName isEqualToString:@""] ? FADemiFontName : FARegularFontName size:size];
}

+ (UIFont *)heavyFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FAHeavyFontName && ![FAHeavyFontName isEqualToString:@""] ? FAHeavyFontName : FARegularFontName size:size];
}

- (id)initCustomWithCoder:(NSCoder *)aDecoder {
    BOOL result = [aDecoder containsValueForKey:@"UIFontDescriptor"];
    
    if (result) {
        UIFontDescriptor *descriptor = [aDecoder decodeObjectForKey:@"UIFontDescriptor"];
        
        NSString *fontName;
        if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontRegularUsage"]) {
            fontName = FARegularFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontEmphasizedUsage"]) {
            fontName = FABoldFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontBoldUsage"]) {
            fontName = FABoldFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontMediumUsage"]) {
            fontName = FAMediumFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontObliqueUsage"]) {
            fontName = FAItalicFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontUltraLightUsage"]) {
            fontName = FAUltraLightFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontThinUsage"]) {
            fontName = FAThinFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontLightUsage"]) {
            fontName = FALightFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontDemiUsage"]) {
            fontName = FADemiFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontHeavyUsage"]) {
            fontName = FAHeavyFontName;
        }
        else {
            fontName = descriptor.fontAttributes[@"NSFontNameAttribute"];
        }
        
        return [UIFont fontWithName:fontName size:descriptor.pointSize];
    }
    
    self = [self initCustomWithCoder:aDecoder];
    
    return self;
}

+ (void)load
{
    [self replaceClassSelector:@selector(systemFontOfSize:) withSelector:@selector(regularFontWithSize:)];
    [self replaceClassSelector:@selector(boldSystemFontOfSize:) withSelector:@selector(boldFontWithSize:)];
    [self replaceClassSelector:@selector(italicSystemFontOfSize:) withSelector:@selector(italicFontOfSize:)];
    
    [self replaceInstanceSelector:@selector(initWithCoder:) withSelector:@selector(initCustomWithCoder:)];
}
#pragma clang diagnostic pop

@end
