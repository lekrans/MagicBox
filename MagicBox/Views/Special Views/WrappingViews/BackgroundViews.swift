//
//  BackgroundViews.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-22.
//

import SwiftUI

/* MARK:    Generic background - MagicBackbround<Content: View> View
                that creates a new view with @ViewBuilder
                Uses a MagicBackgroundEnum to get the right version of background
*/

        
enum MagicBackgroundEnum {
    case main
    case cardMagic
    case unknown
    case settings
    
    public var backgroundView: some View {
        switch self {
        case .main:
            return AnyView(MainBackgroundView())
        case .cardMagic:
            return AnyView(CardMagicBackgroundView())
        case .settings:
            return AnyView(SettingsBackgroundView())
        case .unknown:
            return AnyView(MainBackgroundView())
        }
    }
    
}

struct MainBackgroundView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        Image(colorScheme == .dark ? "oldleather" : "whiteLeather").resizable(resizingMode: .stretch).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        if colorScheme == .dark {Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).opacity(0.4)}
    }
}

struct CardMagicBackgroundView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        Image(colorScheme == .dark ? "green-felt" : "lightMarble").resizable(resizingMode: .tile).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        if colorScheme == .dark {Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).opacity(0.6)}
        Image("cards-icon").resizable().scaledToFit().opacity(0.2)
//            .blendMode(colorScheme == .dark ? .difference : .color)
//            .hueRotation(Angle(degrees: colorScheme == .dark ? 200 : 0))
    }
}

struct SettingsBackgroundView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        Image(colorScheme == .dark ? "brownLeatherButtoned" : "whiteLeatherButtoned").resizable(resizingMode: .tile).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        Image("cogWheelAce").resizable().frame(width: 220, height: 300)
//        if colorScheme == .dark {Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).opacity(0.6)}
//            .blendMode(colorScheme == .dark ? .difference : .color)
//            .hueRotation(Angle(degrees: colorScheme == .dark ? 200 : 0))
    }
}

struct MagicBackground<Content: View>: View {
    let content: Content
    let magicBackground: MagicBackgroundEnum
    let spacing: CGFloat
    
    init(magicBackground: MagicBackgroundEnum? = .unknown, spacing: CGFloat? = 0, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.magicBackground = magicBackground!
        self.spacing = spacing!
    }
    
    var body: some View {
        ZStack {
            magicBackground.backgroundView
            VStack(spacing: self.spacing) {
                self.content
            }
        }
    }
}


