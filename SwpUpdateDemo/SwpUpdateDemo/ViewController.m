//
//  ViewController.m
//  SwpUpdateDemo
//
//  Created by swp_song on 2017/1/5.
//  Copyright © 2017年 swp_song. All rights reserved.
//

#import "ViewController.h"

#import "SwpUpdateHeader.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *versionCheckButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [SwpUpdate sharedInstance];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(UIButton *)button {
    
    
}

@end
