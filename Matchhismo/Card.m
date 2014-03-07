//
//  Card.m
//  CardGame
//
//  Created by wei on 14-3-5.
//  Copyright (c) 2014年 wei. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards
{
    
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString: self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
