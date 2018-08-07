//
//  PoliceSketch.h
//  PoliceSketch
//
//  Created by Daniel Mathews on 2018-08-06.
//  Copyright © 2018 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface PoliceSketch : NSObject

-(UIImage*) getCurrentEyeImage;
-(UIImage*) getCurrentNoseImage;
-(UIImage*) getCurrentMouthImage;

-(UIImage *) incrementAndReturnEyeImage;
-(UIImage *) decrementAndReturnEyeIndex;

@end
