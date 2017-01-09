//
//  WNSingleton.h
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/9/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WNWeatherModel.h"

@interface WNSingleton : NSObject
{
    
    NSArray *obArray;
    WNWeatherModel *obWeatherModel;
    
}

+(WNSingleton*) getInstance;

-(NSArray *)getArray;


@end
