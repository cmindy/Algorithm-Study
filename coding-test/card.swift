//
//  card.swift
//  Algoshipda
//
//  Created by CHOMINJI on 26/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import Foundation

func solution() -> [Int] {
    let C = Int(readLine()!)!
    let P = Int(readLine()!)!
    var shuffledCards: [Int] = []
    
    func shuffle(N: Int, cards: [Int]) -> [Int] {
        var cards = cards
        let movingCards: [Int] = Array(cards[N...cards.count-N-1])
        cards.removeSubrange(N...cards.count-N-1)
        let removedCards = cards
        
        cards = movingCards + removedCards
        
        if movingCards.count > N * 2 {
            let shuffledCards = shuffle(N: N, cards: movingCards) + removedCards
            return shuffledCards
        }
        return cards
    }
    
    for p in 1...P {
        let N = Int(readLine()!)!
        if p == 1 {
            shuffledCards = shuffle(N: N, cards: Array(1...C))
        } else {
            shuffledCards = shuffle(N: N, cards: shuffledCards)
        }
    }
    print(shuffledCards)
    let result = Array(shuffledCards[0...4])
    return result
}


print(solution())
