//
//  WNWeatherModel.h
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/7/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface WNWeatherModel : JSONModel
@property (nonatomic,assign)NSNumber *tempMin;
@property (nonatomic,assign)NSNumber *tempMax;
@property (nonatomic,assign)NSNumber *pressure;
@property(nonatomic,strong)NSString *weatherIcon;
@end
