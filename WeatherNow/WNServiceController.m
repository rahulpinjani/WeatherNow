//
//  WNServiceController.m
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/7/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import "WNServiceController.h"

@implementation WNServiceController
-(WNWeatherModel *)fetchData
{
    WNWeatherModel *loModel = [[WNWeatherModel alloc]init];
    NSURL* jokesUrl = [NSURL URLWithString:@"http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=e498b4b94340dce982cc453731c34eb0"];
    
    [[[NSURLSession sharedSession] dataTaskWithURL:jokesUrl completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        //handle data here
        
        NSString* rawJSON = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
       
        rawJSON = [rawJSON stringByReplacingOccurrencesOfString:@"\\'" withString:@"'"];
        
        self.weatherModel = [[WNBaseJsonModel alloc] initWithString:rawJSON error:nil];
        
        dispatch_async(dispatch_get_main_queue(), ^{
         
            loModel.tempMin = self.weatherModel.tempMin;
            loModel.tempMax = self.weatherModel.tempMax;
            loModel.pressure = self.weatherModel.pressure;
            loModel.weatherIcon = [self.weatherModel.weather objectAtIndex:0];
            NSLog(@"ddf");
            
        });    }] resume];
    
    return loModel;
}





@end
