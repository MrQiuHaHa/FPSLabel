#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "FPSLabel.h"
#import "JRWeakProxy.h"
#import "UIViewController+FPSLabel.h"

FOUNDATION_EXPORT double FPSLabelVersionNumber;
FOUNDATION_EXPORT const unsigned char FPSLabelVersionString[];

