//
//  ViewController.m
//  DateUtility
//
//  Created by Dipen Patel on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{


    
    NSDate *date=[self dateWithString:@"12/06/2012 11:41 am" format:@"dd/MM/yyyy hh:mm a"];
    NSLog(@"Date : %@",date);
    
//    NSDate *newDate=[NSDate dateWithString:@"12/06/2012 11:41 AM" format:@"dd/MM/yyyy hh:mm"];
//    NSLog(@"newDate : %@",newDate);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(NSDate*)dateWithString:(NSString*)str format:(NSString*)formating {
    

       
    NSDateFormatter* dateFormatter =    [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:formating];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    dateFormatter.calendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];

    dateFormatter.locale = [[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"] autorelease];

    return [dateFormatter dateFromString:str];      
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
