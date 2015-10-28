//
//  ViewController.m
//  masterdetail
//
//  Created by Kumar Saurabh Sinha on 14/10/15.
//  Copyright © 2015 saurabh. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(nonnull UIStoryboardSegue *)segue sender:(nullable id)sender {
    if([segue.identifier isEqual: @"pressMeSegue"]) {
        //Get the instance of the segue destination Controller
        PlaylistDetailViewController *objPlaylistDetailView = (PlaylistDetailViewController *) segue.destinationViewController;
        
        //Set the value of the property of the destination Controller
        objPlaylistDetailView.detailLabelValue = @"Proper Pressed";
    }
    
}

@end
