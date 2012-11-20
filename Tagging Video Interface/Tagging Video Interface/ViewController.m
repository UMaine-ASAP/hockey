//
//  ViewController.m
//  Tagging Video Interface
//
//  Created by admin on 11/9/12.
//  Copyright (c) 2012 asap. All rights reserved.
//

#import "ViewController.h"
#import "Timer.h"

#define kPollingInterval 0.1

@interface ViewController ()
@end

@implementation ViewController

@synthesize timerLabel;
@synthesize dateFormatter;
@synthesize myTable;

NSDate *today;
NSTimeInterval diff;
NSMutableArray *tableData;

- (void) pollTime
{
	NSDate *temp = [[NSDate alloc] init];
	int seconds, minutes;
	int tenths;
	diff = [temp timeIntervalSinceDate: today];
	//NSLog(@"%lf", diff);
	
	tenths = diff*10;
	seconds = diff;
	minutes = diff/60;
	
	NSString *currentTime = [NSString stringWithFormat:@"%i : %i : %i", minutes, seconds, tenths];
	
    self.timerLabel.text = currentTime;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	 tableData = [[NSMutableArray alloc] initWithObjects:@"Test 1", @"Test 2", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
			interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (IBAction)startTimerButton:(id)sender {
	[pollingTimer invalidate];
	pollingTimer = nil;
	
	today = [[NSDate alloc] init];
    
    pollingTimer = [NSTimer scheduledTimerWithTimeInterval:kPollingInterval
                                                    target:self
                                                  selector:@selector(pollTime)
                                                  userInfo:nil
												   repeats:YES];
}

- (IBAction)stopTimerButton:(id)sender {
	[pollingTimer invalidate];
	pollingTimer = nil;
}

- (IBAction)goalAgainstButton:(id)sender {

	[tableData addObject:@"Goal Against"];
	
	NSLog(@"Goal Against tagged at %f", diff);
}

- (IBAction)stickSaveButton:(id)sender {
	
	[tableData addObject:@"Stick Save"];
	
	NSLog(@"Stick Save tagged at %f", diff);
}

- (IBAction)gloveSaveButton:(id)sender {
	
	[tableData addObject:@"Glove Save"];
	
	NSLog(@"Glove Save tagged at %f", diff);
}

- (IBAction)protectSaveButton:(id)sender {
	
	[tableData addObject:@"Protector Save"];
	
	NSLog(@"Protector Save tagged at %f", diff);
}

- (IBAction)postSaveButton:(id)sender {
	
	[tableData addObject:@"Post Save"];
	
	NSLog(@"Post Save tagged at %f", diff);
}

- (IBAction)testPressed:(id)sender {
	for (
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
	
    // configure your cell here...
	
    return cell;
}

@end
