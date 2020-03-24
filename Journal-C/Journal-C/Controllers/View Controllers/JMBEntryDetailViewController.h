//
//  JMBEntryDetailViewController.h
//  Journal-C
//
//  Created by Anthroman on 3/23/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JMBEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface JMBEntryDetailViewController : UIViewController

// MARK: - Outlets
@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextView;

// MARK: - Properties
@property (nonatomic) JMBEntry *entry;

// MARK: - Actions
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;

- (IBAction)clearButtonTapped:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
