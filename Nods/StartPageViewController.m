//
//  StartPageViewController.m
//  Nods
//
//  Created by Balazh Vasyl on 6/3/13.
//  Copyright (c) 2013 Balazh Vasyl. All rights reserved.
//

#import "StartPageViewController.h"
#import <MessageUI/MessageUI.h>

@interface StartPageViewController ()

@end

@implementation StartPageViewController

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


- (IBAction)openTapped:(id)sender {
}


- (IBAction)twitterTapped:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"This is cool app about nods !!!"];
        [self presentViewController: tweetSheet animated: YES completion: nil];
    }
}


- (IBAction)emailTapped:(id)sender {
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    mailComposer.mailComposeDelegate=self;
    NSArray *emailAddresses = [[NSArray alloc] initWithObjects:@"me@company.com", nil];
    NSString *sendSubject = [[NSString alloc] initWithFormat:@"Nods"];
    NSString *sendMessage = [[NSString alloc] initWithFormat:@"This is cool app about nods"];
    
    [mailComposer setToRecipients:emailAddresses];
    [mailComposer setSubject:sendSubject];
    [mailComposer setMessageBody:sendMessage isHTML:NO];
    [self presentViewController:mailComposer animated:YES completion:NULL];
}


-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}


- (IBAction)facebookTapped:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook])
    {
        SLComposeViewController *tw = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [tw setInitialText:@"This is cool app about nods !!!"];
        [self presentViewController:tw animated:YES completion:nil];
    }
}


@end
