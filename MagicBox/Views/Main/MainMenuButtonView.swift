//
//  LargeButtonView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-19.
//

import SwiftUI

struct MainMenuButtonView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        GeometryReader { geometry in
            ZStack (alignment: .top) {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .padding(10)
                    .opacity(colorScheme == .dark ? 0.6 : 0.2)
                    .foregroundColor(.black)
                
                Text("Categories")
                    .underline()
                    .font(Font.custom("Signpainter", size:40))
                    .foregroundColor(.magicText)
                    .padding(.top, 20)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                VStack {
                    HStack {
                        VStack {
                            NavigationLink(
                                destination: CardMagicView(),
                                label: {
                                    Image("cards-icon").resizable().scaledToFit().padding(10)
                                    
                                }).modifier(LargeSquareButton())
                            Text("Card magic")
                                .padding(-20)
                                .foregroundColor(.magicText)
                        }
                        
                        //
                        VStack {
                            Button(action: {}, label: {
                                Image("coin").resizable().scaledToFit().padding(10)
                            }).modifier(LargeSquareButton())
                            Text("Coin magic")
                                .padding(-20)
                                .foregroundColor(.magicText)
                        }
                        
                    }
                    HStack {
                        VStack {
                            Button(action: {}, label: {
                                Image("rabbithat").resizable().scaledToFit().padding(10)
                            }).modifier(LargeSquareButton())
                            Text("Stage magic")
                                .padding(-20)
                                .foregroundColor(.magicText)
                        }
                        
                        VStack {
                            Button(action: {}, label: {
                                Image("cupandball").resizable().scaledToFit().padding(10)
                            }).modifier(LargeSquareButton())
                            Text("Close up")
                                .padding(-20)
                                .foregroundColor(.magicText)
                        }
                        
                    }
                }.position(x: geometry.size.width / 2 , y: geometry.size.height / 2)
            }
        }.padding(.top)
    }
}

struct LargeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuButtonView()
    }
}
