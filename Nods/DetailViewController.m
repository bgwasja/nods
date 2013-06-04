//
//  DetailViewController.m
//  Nods
//
//  Created by Balazh Vasyl on 6/4/13.
//  Copyright (c) 2013 Balazh Vasyl. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareTapped:(id)sender {
    UIImage *postImage = [UIImage imageNamed:@"email.png"];
    NSString *postText = @"This is cool program about nods !!!!!!";
    NSArray *activityItems = @[postText, postImage];
    UIActivityViewController *activityController =
    [[UIActivityViewController alloc]
     initWithActivityItems:activityItems applicationActivities:nil];
    [self presentViewController:activityController
                       animated:YES completion:nil];
    }

@end
