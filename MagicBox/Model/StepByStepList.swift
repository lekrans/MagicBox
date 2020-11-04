//
//  StepByStepList.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-25.
//

import Foundation

struct CardMagicStep: Identifiable{
    var id = UUID()
    var leftHandStartState: CardState?
    var rightHandStartState: CardState?
    var leftHandEndState: CardState?
    var rightHandEndState: CardState?
    var title: String
    var description: String
    
    static func exampleData() -> CardMagicStep {
        CardMagicStep(leftHandStartState: CardState.exampleData(), rightHandStartState: CardState.exampleData(), leftHandEndState: CardState.exampleData(), rightHandEndState: CardState.exampleData(), title: "A Step", description: "Gosub gollum gobble glub")
    }

}

struct StepByStepList {
    var title: String
    var steps: [CardMagicStep]?
    
    static func exampleData() -> StepByStepList {
        var list = StepByStepList(title: "Example step by step list")
        list.steps = [CardMagicStep.exampleData(), CardMagicStep.exampleData(), CardMagicStep.exampleData(), CardMagicStep.exampleData()]
        list.title = "Example list"
        
        return list
    }
    
}
