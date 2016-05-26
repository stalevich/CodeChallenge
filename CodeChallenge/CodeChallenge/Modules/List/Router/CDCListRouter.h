//
//  ListRouter.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDCListRouterInput.h"

@interface CDCListRouter : NSObject<CDCListRouterInput>

@property (weak, nonatomic) UIViewController *viewController;

@end
