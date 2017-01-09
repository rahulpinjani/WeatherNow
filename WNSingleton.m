//
//  WNSingleton.m
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/9/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import "WNSingleton.h"

@implementation WNSingleton

static WNSingleton *singletonInstance;

+ (WNSingleton*)getInstance
{
    if (singletonInstance == nil)
    {
        singletonInstance = [[super alloc] init];
    }
    return singletonInstance;
}

-(void)initArray:(NSArray*)arArray
{
    obArray = arArray;
}

-(NSArray *)getArray
{
    return obArray;
}



@end
