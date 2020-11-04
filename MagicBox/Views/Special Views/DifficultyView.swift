//
//  DifficultyView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-22.
//

import SwiftUI

struct DifficultyView: View {
    let difficulty: Difficulty
    var body: some View {
        HStack {
            Text(difficulty.formatted())
                .foregroundColor(difficulty.color())
                .shadow(color: .magicShadow, radius: 1, x: 1, y: 1)
            
        }
    }
}

struct DifficultyView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyView(difficulty: .normal)
    }
}
