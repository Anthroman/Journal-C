//
//  JMBEntry.h
//  Journal-C
//
//  Created by Anthroman on 3/23/20.
//  Copyright © 2020 Anthroman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JMBEntry : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *bodyText;
@property (nonatomic) NSDate *timeStamp;

-(instancetype) initWithTitle:(NSString *)title
                bodyText:(NSString *)bodyText
                timeStamp:(NSDate *)timeStamp;

@end

NS_ASSUME_NONNULL_END
