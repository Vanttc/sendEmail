//
//  ViewController.h
//  sendEmail
//
//  Created by VanThai on 5/25/17.
//  Copyright © 2017 VanThai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController<MFMailComposeViewControllerDelegate>
- (IBAction)openEmail:(id)sender;


@end

