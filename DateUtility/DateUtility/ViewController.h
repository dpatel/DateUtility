//
//  ViewController.h
//  DateUtility
//
//  Created by Dipen Patel on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSDate+Utilities.h"

@interface ViewController : UIViewController

-(NSDate*)dateWithString:(NSString*)str format:(NSString*)formating;

@end
