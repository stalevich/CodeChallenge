//
//  ViewController.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCListViewController.h"
#import "CDCListViewOutput.h"
#import "UIViewController+Alert.h"
#import "CDCKPIListItem.h"
#import "CDCKPIItemCell.h"
#import "CDCTimePeriod+StringFormatting.h"

@interface CDCListViewController () {
    UIBarButtonItem *_logoutButton;
    UIRefreshControl *_refreshControl;
    NSNumberFormatter *_currentyFormatter;
    NSDateFormatter *_dateFormatter;
}

@property (strong, nonatomic) NSMutableArray<CDCKPIListItem *> *items;

@end

@implementation CDCListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _currentyFormatter = [[NSNumberFormatter alloc] init];
    _currentyFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
    _dateFormatter = [[NSDateFormatter alloc] init];
    _dateFormatter.timeStyle = NSDateFormatterNoStyle;
    _dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    
    _refreshControl = [[UIRefreshControl alloc] init];
    [_refreshControl addTarget:self
                        action:@selector(onRefresh)
              forControlEvents:UIControlEventValueChanged];
    self.refreshControl = _refreshControl;
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100;
    
    _logoutButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Logout", nil)
                                                     style:UIBarButtonItemStylePlain
                                                    target:self
                                                    action:@selector(onLogoutTap:)];
    self.navigationItem.rightBarButtonItem = _logoutButton;
    [self.output viewIsReady];
}

- (void)setProgressVisible:(BOOL)visible {
    _logoutButton.enabled = !visible;
    if (!visible) {
        [_refreshControl endRefreshing];
    }
}

- (void)showError:(NSString *)error {
    [self showAlertWithTitle:NSLocalizedString(@"Error", nil)  message:error];
}

- (void)showItems:(NSArray<CDCKPIListItem *> *)items {
    self.items = [NSMutableArray arrayWithArray:items];
    [self.tableView reloadData];
}

- (void)removeListItem:(CDCKPIListItem *)item {
    NSUInteger index = [self.items indexOfObject:item];
    if (index != NSNotFound) {
        [self.items removeObject:item];
        [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:index inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

#pragma mark - Actions

- (void)onRefresh {
    [self.output onRefresh];
}

- (void)onLogoutTap:(id)sender {
    [self.output onLogout];
}

#pragma mark - UItableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CDCKPIItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"itemCell" forIndexPath:indexPath];
    CDCKPIListItem *item = self.items[indexPath.row];
    cell.nameLabel.text = item.label;
    cell.timeLabel.text = [item.surroundingPeriodData.timePeriod timePeriodStrignWithDateFormatter:_dateFormatter];
    _currentyFormatter.currencyCode = item.value.unit;
    cell.valueLabel.text = [_currentyFormatter stringFromNumber:item.value.value];
    cell.avgValueLabel.text = [_currentyFormatter stringFromNumber:item.surroundingPeriodData.avgValue.value];
    cell.maxValueLabel.text = [_currentyFormatter stringFromNumber:item.surroundingPeriodData.maxValue.value];
    cell.minValuelabel.text = [_currentyFormatter stringFromNumber:item.surroundingPeriodData.minValue.value];
    cell.progressView.progress = [item.surroundingPeriodData.avgValue.value doubleValue] / [item.surroundingPeriodData.maxValue.value doubleValue];
    return cell;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.output onDeleteItem:self.items[indexPath.row]];
}

@end
