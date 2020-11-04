//
//  CustomComponents.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-11-01.
//

import SwiftUI

/// Custom Compnents
struct CustomComponents: View {
    @State private var isOn: Bool = false
    @State private var isOn2: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $isOn2, label: {
                Text("Hello")
            })
            
            Toggle(isOn: $isOn, label: {
                Text("Hello")
            }).toggleStyle(MagicToggleStyle())
        }
    }
}



/// A Brown toggle button with same type of animation as the original toggle 
struct MagicToggleStyle: ToggleStyle {
    private var animation: Animation = Animation.easeIn(duration: 0.2)
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            configuration.label.foregroundColor(.magicText)
            Spacer()
            ZStack {
                Capsule()
                    .frame(width: 50, height: 25)
                    .foregroundColor(.clear)
                    .overlay(Capsule().stroke(lineWidth: 2).foregroundColor(.magicBrownBorder))
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 2, x: 2, y: 2)
                
                Capsule()
                    .frame(width: 50, height: 25)
                    .foregroundColor(.magicStaticDarkBrown)
                    .opacity(configuration.isOn ? 0 : 1)
                    .animation(animation)
                Capsule()
                    .frame(width: 50, height: 25)
                    .foregroundColor(.magicStaticLightBrown)
                    .opacity(configuration.isOn ? 1 : 0)
                    .animation(animation)
                
                Circle()
                    .frame(width: 22.0, height: 22.0)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 2, x: 2, y: 2)
                    .onTapGesture { configuration.isOn.toggle() }
                    .offset(x: configuration.isOn ? 10 : -10)
                    .foregroundColor(.magicBrown)
                    .overlay(Circle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(.magicBrownBorder)
                                .offset(x: configuration.isOn ? 10 : -10)
                    )
                    .animation(animation)
                
                Image(systemName: "checkmark")
                    .frame(width: 22.0, height: 22.0)
                    .offset(x: configuration.isOn ? 10 : -10)
                    .opacity(configuration.isOn ? 1 : 0)
                    .foregroundColor(.magicBrownBorder)
                    .animation(animation)
                
            }.opacity(configuration.isOn ? 1 : 0.50)
            
        }
    }
}

struct CustomComponents_Previews: PreviewProvider {
    static var previews: some View {
        CustomComponents()
        CustomComponents().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
