//
//  JMBEntryListTableViewController.m
//  Journal-C
//
//  Created by Anthroman on 3/23/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

#import "JMBEntryListTableViewController.h"
#import "JMBEntryController.h"
#import "JMBEntry.h"
#import "JMBEntryDetailViewController.h"

@interface JMBEntryListTableViewController ()

@end

@implementation JMBEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return JMBEntryController.shared.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    JMBEntry *entry = JMBEntryController.shared.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    // Bunch of code for turning a date into a string (found it online)
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    cell.detailTextLabel.text = [dateFormatter stringFromDate:entry.timeStamp];
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        JMBEntry *entry = JMBEntryController.shared.entries[indexPath.row];
        [JMBEntryController.shared removeEntry:entry];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation
// Thanks, Jared...

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Identifier
    if ([segue.identifier isEqualToString: @"toDetailVC"]) {
        
        // IndexPath
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        // Destination
        JMBEntryDetailViewController *detailVC = segue.destinationViewController;
        
        // Object - ready
        JMBEntry *entry = JMBEntryController.shared.entries[indexPath.row];
        
        // Object - sent
        detailVC.entry = entry;
    }
}

@end
