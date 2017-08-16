//
//  SwpUpdateTools.m
//  swp_song
//
//  Created by swp_song on 2017/1/5.
//  Copyright © 2017年 swp_song. All rights reserved.
//

#import "SwpUpdateTools.h"

static NSString * const kAppStoreLinkUniversal = @"https://itunes.apple.com/lookup?id=%@";

@implementation SwpUpdateTools


+ (void)swpUpdateToolsGetAppMessage:(NSString *)appID {
    
    NSString             *storeString = [NSString stringWithFormat:kAppStoreLinkUniversal, appID];
    NSURL                *storeURL    = [NSURL URLWithString:storeString];
    NSMutableURLRequest  *request     = [NSMutableURLRequest requestWithURL:storeURL];
    NSURLSession         *session     = [NSURLSession sharedSession];
    NSURLSessionDataTask *task        = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data.length > 0 && !error) {
        
            NSLog(@"%@", data);
            NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"%@", dictionary);
        }
    }];
    
    [task resume];

    NSLog(@"%@", storeString);
    
}


@end
