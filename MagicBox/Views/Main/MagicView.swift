//
//  MagicView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-19.
//

import SwiftUI

struct MagicView: View {
    var body: some View {
        NavigationView {
            MagicBackground{
            VStack {
                    Text("MAGIC-BOX")
                        .font(Font.custom("Papyrus", size: 45))
                        .foregroundColor(.magicText)
                        .shadow(color:  .magicShadow, radius: 2, x:5, y: 8)
                        .rotationEffect(.init(degrees: -10))
                        .padding(.top, -70)

                    MainMenuButtonView()
                }
            }
        }.navigationTitle("Bananer")
    }
    
}

struct MagicView_Previews: PreviewProvider {
    static var previews: some View {
        MagicView()
    }
}
