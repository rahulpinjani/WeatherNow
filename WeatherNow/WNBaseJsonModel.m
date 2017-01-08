//
//  WNBaseJsonModel.m
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/7/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import "WNBaseJsonModel.h"

@implementation WNBaseJsonModel

+(JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
            @"tempMin": @"main.temp_min",
            @"tempMax": @"main.temp_max",
            @"pressure": @"main.pressure",
            @"weather": @"weather.icon"
            }];
}

@end
