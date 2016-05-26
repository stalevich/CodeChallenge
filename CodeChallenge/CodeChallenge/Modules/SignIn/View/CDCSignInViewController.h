//
//  ViewController.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDCSignInViewInput.h"

@protocol CDCSignInViewOutput;

@interface CDCSignInViewController : UIViewController<CDCSignInViewInput>

@property (strong, nonatomic) id<CDCSignInViewOutput> output;

@end

