//
//  CardGameViewController.m
//  Matchhismo
//
//  Created by wei on 14-3-6.
//  Copyright (c) 2014年 wei. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "Deck.h"
#import "PlayingCard.h"
#import "Card.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic)int flipCount;
@property (nonatomic, strong) Deck *deck;


@end

@implementation CardGameViewController


- (Deck *)deck
{
    _deck = [[PlayingCardDeck alloc] init];
    
    return _deck;
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}


- (IBAction)touchCardButton:(UIButton *)sender {
    if (![sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        PlayingCard *card = [self.deck drawRandomCard];
        [sender setTitle:[NSString stringWithFormat:@"%@%d", card.suit, card.rank] forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    
    self.flipCount++;

}



@end
