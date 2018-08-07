//
//  PoliceSketch.m
//  PoliceSketch
//
//  Created by Daniel Mathews on 2018-08-06.
//  Copyright © 2018 Sam Meech-Ward. All rights reserved.
//

#import "PoliceSketch.h"

@interface PoliceSketch()

@property (nonatomic, strong) NSArray *eyeImages;
@property (nonatomic, strong) NSArray *noseImages;
@property (nonatomic, strong) NSArray *mouthImages;

@property (nonatomic, assign) NSInteger eyeIndex;
@property (nonatomic, assign) NSInteger noseIndex;
@property (nonatomic, assign) NSInteger mouthIndex;

@end

@implementation PoliceSketch

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _eyeIndex = 0;
        _noseIndex = 0;
        _mouthIndex = 0;
        
        _eyeImages = @[@"eyes_1", @"eyes_2", @"eyes_3", @"eyes_4", @"eyes_5"];
        _noseImages = @[@"nose_1", @"nose_2", @"nose_3", @"nose_4", @"nose_5"];
        _mouthImages = @[@"mouth_1", @"mouth_2", @"mouth_3", @"mouth_4", @"mouth_5"];
    }
    return self;
}

-(UIImage*) getCurrentEyeImage {
    NSString *nameOfImage = self.eyeImages[self.eyeIndex];
    return [UIImage imageNamed:nameOfImage];
}

-(UIImage*) getCurrentNoseImage {
    return [UIImage imageNamed:self.noseImages[self.noseIndex]];
}

-(UIImage*) getCurrentMouthImage {
    return [UIImage imageNamed:self.mouthImages[self.mouthIndex]];
}

-(NSInteger) incrementAndFixIndex:(NSInteger) index andArray:(NSArray*)array {
    
    NSInteger incrementedIndex = index + 1;
    if (incrementedIndex > [array count] - 1){
        incrementedIndex = 0;
    }
    return incrementedIndex;
    
}

-(NSInteger) decrementAndFixIndex:(NSInteger) index andArray:(NSArray*)array {
    
    NSInteger decrementedIndex = index - 1;
    if (decrementedIndex < 0){
        decrementedIndex = [array count] - 1;
    }
    
    return decrementedIndex;
}


-(UIImage *) incrementAndReturnEyeImage {
    NSInteger newEyeIndex = [self incrementAndFixIndex:self.eyeIndex andArray:self.eyeImages];
    self.eyeIndex = newEyeIndex;
    return [self getCurrentEyeImage];
}

-(UIImage *) decrementAndReturnEyeIndex {
    NSInteger newEyeIndex = [self decrementAndFixIndex:self.eyeIndex andArray:self.eyeImages];
    self.eyeIndex = newEyeIndex;
    return [self getCurrentEyeImage];
}

@end
