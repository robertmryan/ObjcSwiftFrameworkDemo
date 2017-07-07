//
//  Bar.m
//  MyApp
//
//  Created by Robert Ryan on 7/7/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

#import "Bar.h"

@implementation Bar

- (void)performTask {
    NSLog(@"%s", __FUNCTION__);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.delegate didBar];
    });
}

@end
