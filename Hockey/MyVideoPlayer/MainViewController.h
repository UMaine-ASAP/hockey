//This file is part of MyVideoPlayer.
//
//MyVideoPlayer is free software: you can redistribute it and/or modify
//it under the terms of the GNU General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.
//
//MyVideoPlayer is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.
//
//You should have received a copy of the GNU General Public License
//along with MyVideoPlayer.  If not, see <http://www.gnu.org/licenses/>.

#import <UIKit/UIKit.h>
#import "VideoPlayerViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import "QuartzCore/QuartzCore.h"

@interface MainViewController: UIViewController

// @property (nonatomic, retain) MPMoviePlayerController *playerViewController;

@property (nonatomic, retain) VideoPlayerViewController *videoPlayerViewController;
@property (nonatomic, retain) VideoPlayerViewController *myPlayerViewController;
@property (nonatomic, retain) VideoPlayerViewController *myPlayerViewControllerTwo;
@property (nonatomic, retain) UIImageView *frontGoal;
@property (nonatomic, retain) UIImageView *topGoal;

@end
