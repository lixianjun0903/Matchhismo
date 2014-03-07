//
//  Deck.h
//  CardGame
//
//  Created by wei on 14-3-5.
//  Copyright (c) 2014年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void) addCard:(Card *)card atTop: (BOOL)atTop;
- (void) addCard:(Card *)card;

- (Card*) drawRandomCard;

@end
