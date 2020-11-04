//
//  DividerView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-29.
//

import Foundation
import SwiftUI

struct Divider: View {
    var geometry: GeometryProxy
    var body: some View {
        Path(CGRect(x: 20, y: 0, width: geometry.frame(in: .local).width - 40 , height: 1))
            .stroke(Color.gray)
            .frame(height: 1)
            .opacity(0.4)
    }
}
