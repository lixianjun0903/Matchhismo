//
//  PlayingCard.m
//  CardGame
//
//  Created by wei on 14-3-5.
//  Copyright (c) 2014年 wei. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; //because we prodive setter and getter

- (NSString *)suit
{
    return _suit ? _suit: @"?";
}

+ (NSArray *)validSuits
{
    return @[@"方片",@"梅花",@"黑桃",@"红桃"];
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger *) maxrank
{
    return [[self rankStrings] count] -1;
}

- (void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject: suit])
    {
        _suit = suit;
    }
}

- (void)setRank:(NSUInteger)rank
{
    if ( _rank <= [PlayingCard maxrank])
    {
        
        _rank = rank;
    }
}

@end
