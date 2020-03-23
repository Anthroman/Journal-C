//
//  JMBEntry.m
//  Journal-C
//
//  Created by Anthroman on 3/23/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

#import "JMBEntry.h"

@implementation JMBEntry

-(instancetype) initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timeStamp:(NSDate *)timeStamp
{
    self = [super init];
    
    if (self) {
        _title = title;
        _bodyText = bodyText;
        
        if (timeStamp) {
            _timeStamp = timeStamp;
        } else {
            _timeStamp = [NSDate date];
        }
    }
    return self;
}
@end
