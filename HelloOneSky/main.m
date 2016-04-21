//
//  main.m
//  HelloOneSky
//
//  Created by James Perih on 2016-04-21.
//  Copyright © 2016 Hot Dang Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "NSBundle+Language.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        [NSBundle setLanguage:@"fr"];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
