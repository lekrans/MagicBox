//
//  LinksListView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-11-03.
//

import SwiftUI

struct LinksListView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
       UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        MagicBackground(magicBackground: .cardMagic) {
            VStack {
            LinksView().listRowBackground(Color.clear)
            LinksView().listRowBackground(Color.clear)
            LinksView().listRowBackground(Color.clear)
            LinksView().listRowBackground(Color.clear)
        }.background(Image("lightBeigeLeather").resizable(resizingMode: .tile))
            Spacer()
        }
    }
}

struct LinksListView_Previews: PreviewProvider {
    static var previews: some View {
        LinksListView()
    }
}

