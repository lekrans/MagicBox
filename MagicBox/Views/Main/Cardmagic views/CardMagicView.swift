//
//  CardMagicView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-19.
//

import SwiftUI

struct CardMagicView: View {
      var body: some View {
        MagicBackground(magicBackground: .cardMagic) {
            
                CardMagicSections()
            
        }.navigationBarTitle("Card Magic", displayMode: .inline)
    }
    
}

struct CardMagicView_Previews: PreviewProvider {
    static var previews: some View {
        CardMagicView()
    }
}
