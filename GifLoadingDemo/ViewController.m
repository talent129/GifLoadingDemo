//
//  ViewController.m
//  GifLoadingDemo
//
//  Created by luckyCoderCai on 16/10/13.
//  Copyright © 2016年 luckyCoderCai. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+GIF.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    [self loading];
    
}

#pragma mark -
- (void)loading
{
    UIImage *loadingImg = [UIImage sd_animatedGIFNamed:@"loading"];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 50)/2.0, 100, 50, 50)];
    imgView.backgroundColor = [UIColor orangeColor];
    imgView.image = loadingImg;
    [self.view addSubview:imgView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
