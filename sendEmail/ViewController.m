//
//  ViewController.m
//  sendEmail
//
//  Created by VanThai on 5/25/17.
//  Copyright © 2017 VanThai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)openEmail:(id)sender
{
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    mailComposer.mailComposeDelegate = self;
    [mailComposer setSubject:@"TestMail"];
    [mailComposer setMessageBody:@"Testing message for test email" isHTML:NO];
    [self presentViewController:mailComposer animated:YES completion:nil];
}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    if (result) {
        NSLog(@"Result : %ld",(long)result);
        
    }
    if (error) {
        NSLog(@"Error :%@",error);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
