//
//  KeyValueView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-22.
//

import SwiftUI

struct KeyValueView: View {
    let key: AnyView
    let value: AnyView
    var useDivider: Bool = false
    
    init( key: String, value: AnyView, useDivider: Bool = false) {
        self.key = AnyView(Text(key)
                            .modifier(SectionText()))
        self.value = value
        self.useDivider = useDivider
    }
    
    init( key: AnyView, value: String, useDivider: Bool = false) {
        self.key = key
        self.value = AnyView(Text(value).foregroundColor(.magicText))
        self.useDivider = useDivider
    }
    
    init(key: String, value: String, useDivider: Bool = false) {
        self.key = AnyView(Text(key).modifier(SectionText()))
        self.value = AnyView(Text(value).foregroundColor(.magicText))
        self.useDivider = useDivider
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                key
                Spacer()
                value
                    
            }
            if self.useDivider {
                Rectangle().frame(height: 1).opacity(0.2).offset(y:12)
            }
        }.padding(0)
    }
}
