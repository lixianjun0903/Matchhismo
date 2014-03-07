//
//  Card.h
//  CardGame
//
//  Created by wei on 14-3-5.
//  Copyright (c) 2014年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match: (NSArray *) otherCards;

@end
