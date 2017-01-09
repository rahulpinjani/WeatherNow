//
//  ViewController.h
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/7/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WNServiceController.h"
#import "WNSingleton.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) WNServiceController *loObject;

@end

