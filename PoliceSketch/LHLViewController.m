//
//  ViewController.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLViewController.h"
#import "PoliceSketch.h"

@interface LHLViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *eyeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;
@property (nonatomic, strong) PoliceSketch *sketch;

@end

@implementation LHLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.sketch = [[PoliceSketch alloc] init];
    self.eyeImageView.image = [self.sketch getCurrentEyeImage];
    self.noseImageView.image = [self.sketch getCurrentNoseImage];
    self.mouthImageView.image = [self.sketch getCurrentMouthImage];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextEyeButtonPressed:(UIButton *)sender {
    self.eyeImageView.image = [self.sketch incrementAndReturnEyeImage];
}

- (IBAction)nextNoseButtonPressed:(UIButton *)sender {
}

- (IBAction)nextMouthButtonPressed:(UIButton *)sender {
}

- (IBAction)previousEyeButtonPressed:(UIButton *)sender {
    self.eyeImageView.image = [self.sketch decrementAndReturnEyeIndex];
}

- (IBAction)previousNoseButtonPressed:(UIButton *)sender {
}

- (IBAction)previousMouthButtonPressed:(UIButton *)sender {
}


@end
