//
//  ViewController.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCSignInViewController.h"
#import "CDCSignInViewOutput.h"
#import "CDCPendingButton.h"
#import "UIViewController+Alert.h"

@interface CDCSignInViewController ()

@property (weak, nonatomic) IBOutlet CDCPendingButton *signInButton;
@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation CDCSignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.output viewIsReady];
}

#pragma mark - Actions

- (IBAction)onSignInTap:(id)sender {
    [self.output onSignInWithLogin:self.loginTextField.text password:self.passwordTextField.text];
}

- (IBAction)onViewTap:(id)sender {
    [self.view endEditing:YES];
}

#pragma mark - CDCSignInViewInput

- (void)setProgressVisible:(BOOL)visible {
    self.signInButton.pending = visible;
}

- (void)showError:(NSString *)error {
    [self showAlertWithTitle:NSLocalizedString(@"Error", nil) message:error];
}

@end
