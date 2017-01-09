//
//  WNServiceController.h
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/7/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WNBaseJsonModel.h"
#import "WNWeatherModel.h"
@interface WNServiceController : NSObject

@property (strong, nonatomic) WNBaseJsonModel* weatherModel;
-(WNWeatherModel *)fetchData;

@end
