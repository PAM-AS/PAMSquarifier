//
//  ViewController.m
//  SquarifySample
//
//  Created by Thomas Sunde Nielsen on 09.12.14.
//  Copyright (c) 2014 PAM. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+PAMSquarify.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)squarify:(id)sender {
    self.imageView.image = [self.imageView.image squarify];
}

@end
