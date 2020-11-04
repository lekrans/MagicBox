//
//  CardState.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-25.
//

import Foundation

enum CardStatePack: String, Equatable, CaseIterable {
    case none = "None"
    case deck = "Deck"
    case halfDeck = "Half deck"
    case smallPack = "Small pack"
    case singleCard = "Single card"
}

enum CardStateGrip: String, Equatable, CaseIterable {
    case none = "None"
    case dealerGrip = "Dealers grip"
    case biddleGrip = "Biddle grip"
    case elevatedDealerGrip = "Elevated dealers grip"
    case tabled = "Tabled"
    case tenkaiStartPosition = "tenkaiStartPosition"
    case palmed = "Palmed"
}



enum CardStateCardPosition: String, Equatable, CaseIterable {
    case none = "None"
    case atBottom = "At bottom"
    case atTop = "At Top"
    case secondFromTop = "Second from Top"
    case secondFromBottom = "Second from bottom"
    case atNthFromTop = "Nth from top"
    case atNthFromBottom = "Nth from bottom"
    case atBreak = "At break"
}



struct CardState {
    var pack: CardStatePack = CardStatePack.deck
    var grip: CardStateGrip = CardStateGrip.none
    var spectatorCard: CardStateCardPosition = CardStateCardPosition.none
    var forceCard: CardStateCardPosition = CardStateCardPosition.none
    var keyCard: CardStateCardPosition = CardStateCardPosition.none
    var aBreak: Bool = false
    
    static func exampleData() -> CardState {
        var cardState = CardState()
        cardState.pack = CardStatePack.allCases.randomElement()!
        cardState.grip = CardStateGrip.allCases.randomElement()!
        cardState.spectatorCard = CardStateCardPosition.allCases.randomElement()!
        cardState.forceCard = CardStateCardPosition.allCases.randomElement()!
        cardState.keyCard = CardStateCardPosition.allCases.randomElement()!
        cardState.aBreak = Bool.random()
        return cardState        
    }
}
