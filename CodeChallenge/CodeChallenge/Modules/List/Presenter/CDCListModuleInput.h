//
//  SignInModuleInput.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CDCKPIListItem;

@protocol CDCListModuleInput <NSObject>

@property (strong, nonatomic) NSArray<CDCKPIListItem *> *items;

@end
