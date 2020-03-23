//
//  JMBEntryController.m
//  Journal-C
//
//  Created by Anthroman on 3/23/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

#import "JMBEntryController.h"

@implementation JMBEntryController

+ (JMBEntry *) shared {
    static JMBEntry *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [JMBEntry new];
    });
    return shared;
}

-(instancetype)init {
    self = [super init];
    
    if (self)
    {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addEntry:(JMBEntry *)entry
{
    [self.entries addObject:entry];
}

-(void)updateEntry:(JMBEntry *)entry withTitle:(NSString *)title andBodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
}

-(void)removeEntry:(JMBEntry *)entry
{
    [self.entries removeObject:entry];
}



@end
