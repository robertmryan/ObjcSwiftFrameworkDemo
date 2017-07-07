//
//  Bar.h
//  MyApp
//
//  Created by Robert Ryan on 7/7/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BarDelegate <NSObject>

- (void)didBar;

@end


@interface Bar : NSObject

@property (nonatomic, weak) id<BarDelegate> delegate;

- (void)performTask;

@end
