//
//  RatingsView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-25.
//

import SwiftUI

struct RatingsView: View {
    var count: Int = 3
    var fontSize: CGFloat?
    var body: some View {
        return HStack {
            ForEach(0..<count) {_ in
                Image(systemName: "star.fill").font(Font.system(size: self.fontSize ?? 14))
                    .padding(-3)
                
            }
        }
        .foregroundColor(.magicText)
    }

}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(count: 4)
    }
}
