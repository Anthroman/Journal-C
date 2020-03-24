//
//  JMBEntryDetailViewController.m
//  Journal-C
//
//  Created by Anthroman on 3/23/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

#import "JMBEntryDetailViewController.h"
#import "JMBEntry.h"
#import "JMBEntryController.h"

@interface JMBEntryDetailViewController ()

@end

@implementation JMBEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    if (_entry) {
        [JMBEntryController.shared updateEntry:_entry withTitle:self.entryTitleTextField.text andBodyText:self.entryBodyTextView.text];
    } else {
        JMBEntry *entry = [[JMBEntry alloc] initWithTitle:self.entryTitleTextField.text bodyText:self.entryBodyTextView.text timeStamp:[NSDate date]];
        [JMBEntryController.shared addEntry:entry];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)clearButtonTapped:(UIButton *)sender {
    self.entryTitleTextField.text = @"";
    self.entryBodyTextView.text = @"";
}

- (void)updateViews {
    
    if (self.entry) {
        self.entryTitleTextField.text = _entry.title;
        self.entryBodyTextView.text = _entry.bodyText;
    }
}

@end
