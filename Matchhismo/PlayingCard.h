//
//  PlayingCard.h
//  CardGame
//
//  Created by wei on 14-3-5.
//  Copyright (c) 2014年 wei. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic, strong) NSString *suit;
@property(nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger *)maxrank;

@end
