//
//  JMBEntryController.h
//  Journal-C
//
//  Created by Anthroman on 3/23/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JMBEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface JMBEntryController : NSObject

+(JMBEntryController *)shared;
@property (nonatomic, strong) NSMutableArray<JMBEntry *> *entries;

-(void)addEntry:(JMBEntry *)entry;
-(void)removeEntry:(JMBEntry *)entry;
-(void)updateEntry:(JMBEntry *)entry withTitle:(NSString *)title andBodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
