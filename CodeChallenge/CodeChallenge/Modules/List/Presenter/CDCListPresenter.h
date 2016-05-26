//
//  ListPresenter.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDCListModuleInput.h"
#import "CDCListViewOutput.h"
#import "CDCListInteractorOutput.h"

@protocol CDCListViewInput, CDCListInteractorInput, CDCListRouterInput;

@interface CDCListPresenter : NSObject<CDCListModuleInput, CDCListViewOutput, CDCListInteractorOutput>

@property (weak, nonatomic) id<CDCListViewInput> view;
@property (strong, nonatomic) id<CDCListInteractorInput> interactor;
@property (strong, nonatomic) id<CDCListRouterInput> router;

@end
