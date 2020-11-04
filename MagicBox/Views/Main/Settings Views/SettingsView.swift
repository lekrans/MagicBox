//
//  SettingsView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-19.
//

import SwiftUI

struct SettingsView: View {
    @Binding var isDark: Bool
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        MagicBackground(magicBackground: .settings) {
            Form {
                Toggle(isOn: $isDark, label: {
                    Text("Dark mode")
                }).modifier(MagicToggle())                                
            }.opacity(0.8)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        MagicBackground(magicBackground: .cardMagic) {
            SettingsView(isDark: .constant(true)).preferredColorScheme(.light)
        }
        MagicBackground(magicBackground: .cardMagic) {
            SettingsView(isDark: .constant(true)).preferredColorScheme(.dark)
        }
    }
}
