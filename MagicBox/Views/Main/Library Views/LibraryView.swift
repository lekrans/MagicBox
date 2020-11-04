//
//  LibraryView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-20.
//

import SwiftUI

struct LibraryView: View {
        var body: some View {
            
            NavigationView {
                MagicBackground(magicBackground: .cardMagic) {
                List {
                    ForEach(1..<10) { ix in
                        Text("\(ix)")
                    }
                    
                }
                .navigationBarTitle("Comments", displayMode: .inline)
                
                
                .listStyle(InsetGroupedListStyle())
                .opacity(0.6)
                
            }
            
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
