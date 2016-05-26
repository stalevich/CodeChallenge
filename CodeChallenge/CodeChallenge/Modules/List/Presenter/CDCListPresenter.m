//
//  SignInPresenter.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCListPresenter.h"
#import "CDCListViewInput.h"
#import "CDCListInteractorInput.h"
#import "CDCListRouterInput.h"

@implementation CDCListPresenter
@synthesize items = _items;

- (void)viewIsReady {
    [self.view showItems:self.items];
}

- (void)requsetItems {
    [self.view setProgressVisible:YES];
    [self.interactor requsetItems];
}

- (void)onLogout {
    [self.view setProgressVisible:YES];
    [self.interactor logout];
}

- (void)onRefresh {
    [self requsetItems];
}

- (void)onDeleteItem:(CDCKPIListItem *)item {
    [self.view removeListItem:item];
}

#pragma mark - CDCListInteractorOutput

- (void)didLogout {
    [self.view setProgressVisible:NO];
    [self.router dismiss];
}

- (void)didRequestItems:(NSArray<CDCKPIListItem *> *)items {
    [self.view setProgressVisible:NO];
    [self.view showItems:self.items];
}

- (void)onError:(NSString *)error {
    [self.view setProgressVisible:NO];
    [self.view showError:error];
}

@end
