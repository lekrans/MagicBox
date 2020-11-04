//
//  TechniqueImageView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-22.
//

import SwiftUI

struct TechniqueImageView: View {
    var body: some View {
        Image("tabledShuffle")
            .resizable()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .scaledToFill()
            .frame(height: 100)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.magicTan, lineWidth: 2))
    }
}

struct TechniqueImageView_Previews: PreviewProvider {
    static var previews: some View {
        TechniqueImageView()
    }
}
