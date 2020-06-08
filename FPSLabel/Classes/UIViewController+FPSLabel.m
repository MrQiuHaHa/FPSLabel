//
//  UIViewController+FPSLabel.m
//  Pods
//
//  Created by 邱俊荣 on 2020/6/8.
//

#import "UIViewController+FPSLabel.h"
#import "FPSLabel.h"
#import <objc/runtime.h>

@implementation UIViewController (FPSLabel)

+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Method method1 = class_getInstanceMethod([self class], @selector(viewDidLoad));
        Method method2 = class_getInstanceMethod([self class], @selector(myViewDidLoad));
        method_exchangeImplementations(method1, method2);
        
    });
}

- (void)myViewDidLoad {
    [self myViewDidLoad];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            FPSLabel *label = [[FPSLabel alloc] initWithFrame:CGRectMake(200, 200, 50, 30)];
            [label sizeToFit];
            [[UIApplication sharedApplication].keyWindow addSubview:label];
            
        });
    });
}

@end
