//
//  SwpUpdate.m
//  swp_song
//
//  Created by swp_song on 2017/1/5.
//  Copyright © 2017年 swp_song. All rights reserved.
//

#import "SwpUpdate.h"

#import "SwpUpdateTools.h"

@implementation SwpUpdate

#pragma mark - Initialization
+ (instancetype)sharedInstance {
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame:frame]) {
        
    
        [SwpUpdateTools swpUpdateToolsGetAppMessage:@"1121530097"];
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
