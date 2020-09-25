//
//  main.m
//  iUIPageControlFix4iOS14
//
//  Created by mac on 2020/9/24.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
CFAbsoluteTime startTime4main;

int main(int argc, char * argv[]) {
    
    startTime4main = CFAbsoluteTimeGetCurrent();
    
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
