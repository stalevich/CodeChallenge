//
//  ListViewOutput.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CDCListViewOutput <NSObject>

- (void)viewIsReady;
- (void)onRefresh;
- (void)onLogout;
- (void)onDeleteItem:(CDCKPIListItem *)item;

@end
