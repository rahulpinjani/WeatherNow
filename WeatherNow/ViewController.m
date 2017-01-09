//
//  ViewController.m
//  WeatherNow
//
//  Created by Rahul Pinjani on 1/7/17.
//  Copyright © 2017 Rahul Pinjani. All rights reserved.
//

#import "ViewController.h"
#import "WNWeatherModel.h"

@interface ViewController ()

@property (nonatomic,strong)WNWeatherModel *obModel;
@property (weak, nonatomic) IBOutlet UITableView *obTableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    
//    WNSingleton* singleton = [WNSingleton getInstance];
//    _loObject = [[WNServiceController alloc]init];
//    
//    _obModel = [[WNWeatherModel alloc] init];
//    _obModel = [_loObject fetchData];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
// -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//}


@end
