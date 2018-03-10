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

static NSString * FORegularFontName ;
static NSString * FOBoldFontName ;
static NSString * FOItalicFontName ;

+(void)setRegularFontName:(NSString*)fontName{
    FORegularFontName = fontName;}
+(void)setBoldFontName:(NSString*)fontName{
    FOBoldFontName = fontName;}
+(void)setItalicFontName:(NSString*)fontName{
    FOItalicFontName = fontName;}
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
    return [UIFont fontWithName:FORegularFontName size:size];
}

+ (UIFont *)boldFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:FOBoldFontName && ![FOBoldFontName isEqualToString:@""] ? FOBoldFontName : FORegularFontName size:size];
}

+ (UIFont *)italicFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:FOItalicFontName && ![FOItalicFontName isEqualToString:@""] ? FOItalicFontName : FORegularFontName size:size];
}

- (id)initCustomWithCoder:(NSCoder *)aDecoder {
    BOOL result = [aDecoder containsValueForKey:@"UIFontDescriptor"];
    
    if (result) {
        UIFontDescriptor *descriptor = [aDecoder decodeObjectForKey:@"UIFontDescriptor"];
        
        NSString *fontName;
        if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontRegularUsage"]) {
            fontName = FORegularFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontEmphasizedUsage"]) {
            fontName = FOBoldFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontBoldUsage"]) {
            fontName = FOBoldFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontMediumUsage"]) {
            fontName = FOBoldFontName;
        }
        else if ([descriptor.fontAttributes[@"NSCTFontUIUsageAttribute"] isEqualToString:@"CTFontObliqueUsage"]) {
            fontName = FOItalicFontName;
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
