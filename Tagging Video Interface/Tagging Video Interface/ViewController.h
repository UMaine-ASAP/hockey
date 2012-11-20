//
//  ViewController.h
//  Tagging Video Interface
//
//  Created by admin on 11/9/12.
//  Copyright (c) 2012 asap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	NSDate *start;
	UILabel *timerLabel;
	NSTimer *pollingTimer;
	NSDateFormatter *dateFormatter;
}

@property (retain, nonatomic) IBOutlet UILabel *timerLabel;
@property (nonatomic, retain) NSDateFormatter *dateFormatter;
@property (strong, nonatomic) IBOutlet UITableView *myTable;

- (IBAction)startTimerButton:(id)sender;
- (IBAction)goalAgainstButton:(id)sender;
- (IBAction)stickSaveButton:(id)sender;
- (IBAction)gloveSaveButton:(id)sender;
- (IBAction)protectSaveButton:(id)sender;
- (IBAction)postSaveButton:(id)sender;
- (IBAction)stopTimerButton:(id)sender;
- (IBAction)testPressed:(id)sender;

@end
