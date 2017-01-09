//
//  WNWeatherModel.m
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/7/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import "WNWeatherModel.h"
#import "WNConstants.h"
@implementation WNWeatherModel

-(id)initWithName:(NSNumber *)tempMax tempMin:(NSNumber *)tempMin pressure:(NSNumber *)pressure weatherIcon:(NSString *)weatherIcon {
    self = [super init];
    if( self )
    {
        self.tempMax = tempMax;
        self.tempMin = tempMin;
        self.pressure = pressure;
        self.weatherIcon = weatherIcon;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if( self )
    {
        self.tempMax = [aDecoder decodeObjectForKey:kTempMax];
        self.tempMin = [aDecoder decodeObjectForKey:kTempMin];
        self.weatherIcon = [aDecoder decodeObjectForKey:kWeatherIcon];
        self.pressure = [aDecoder decodeObjectForKey:kPressure];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:self.tempMin forKey:kTempMax];
    [encoder encodeObject:self.tempMax forKey:kTempMin];
    [encoder encodeObject:self.pressure forKey:kPressure];
    [encoder encodeObject:self.weatherIcon forKey:kWeatherIcon];
}

@end
