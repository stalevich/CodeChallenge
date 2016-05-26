//
//  ListViewInput.h
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CDCKPIListItem;

@protocol CDCListViewInput <NSObject>

- (void)setProgressVisible:(BOOL)visible;
- (void)showItems:(NSArray<CDCKPIListItem *> *)items;
- (void)showError:(NSString *)error;
- (void)removeListItem:(CDCKPIListItem *)item;

@end
