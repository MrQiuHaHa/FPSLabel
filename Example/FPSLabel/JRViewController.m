//
//  JRViewController.m
//  FPSLabel
//
//  Created by 2574282239@qq.com on 06/08/2020.
//  Copyright (c) 2020 2574282239@qq.com. All rights reserved.
//

#import "JRViewController.h"
#import <FPSLabel.h>

@interface JRViewController ()
@property (nonatomic, strong) FPSLabel *fpsLabel;
@end

@implementation JRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _fpsLabel = [FPSLabel new];
    _fpsLabel.frame = CGRectMake(200, 200, 50, 30);
    [_fpsLabel sizeToFit];
    [self.view addSubview:_fpsLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
