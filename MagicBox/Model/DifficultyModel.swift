//
//  DifficultyModel.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-25.
//

import Foundation
import SwiftUI

public enum Difficulty: CaseIterable {
    case veryEasy
    case easy
    case normal
    case hard
    case veryHard
    
    func formatted() -> String {
        var difficultyString = ""
        switch self {
        case .veryEasy:
            difficultyString = "Very Easy"
        case .easy:
            difficultyString = "Easy"
        case .normal:
            difficultyString = "Normal"
        case .hard:
            difficultyString = "Hard"
        case .veryHard:
            difficultyString = "Very Hard"
        }
        
        return difficultyString
    }
    
    

    func color() -> Color {
        var color = Color.gray
        switch self {
        case .veryEasy,
             .easy:
            color = Color.magicGreen
        case .normal:
            color = Color.magicYellow
        case .hard,
             .veryHard:
            color = Color.magicRed
        }
        
        return color
    }

    func badgeColor() -> Color {
        var color = Color.gray
        switch self {
        case .veryEasy,
             .easy:
            color = Color.magicBadgeGreen
        case .normal:
            color = Color.magicBadgeYellow
        case .hard,
             .veryHard:
            color = Color.magicBadgeRed
        }
        
        return color
    }
    
    func asTextView() -> Text {
        return Text(self.formatted()).foregroundColor(self.color())
    }

    

}
