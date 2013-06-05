//
//  DetailViewController.h
//  Nods
//
//  Created by Balazh Vasyl on 6/4/13.
//  Copyright (c) 2013 Balazh Vasyl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *instructionsImage;
@property (strong, nonatomic) IBOutlet UITextView *instructionsText;

- (IBAction)shareTapped:(id)sender;

@end
