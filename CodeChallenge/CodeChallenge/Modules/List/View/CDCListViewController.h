//
//  ViewController.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDCListViewInput.h"

@protocol CDCListViewOutput;

@interface CDCListViewController : UITableViewController<CDCListViewInput>

@property (strong, nonatomic) id<CDCListViewOutput> output;

@end

