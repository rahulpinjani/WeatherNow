//
//  WNBaseJsonModel.h
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/7/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSONModel.h"
@interface WNBaseJsonModel : JSONModel

@property (nonatomic,assign) NSArray *weather;
@property (nonatomic,assign)NSNumber <Optional> *tempMin;
@property (nonatomic,assign)NSNumber<Optional> *tempMax;
@property (nonatomic,assign)NSNumber <Optional>*pressure;

@end
