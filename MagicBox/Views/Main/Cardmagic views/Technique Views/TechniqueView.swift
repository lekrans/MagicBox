//
//  TechniqueView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-22.
//

import SwiftUI

struct TechniqueView: View {
    @State public var selectedTabIndex = 0
    var body: some View {
        
        MagicBackground(magicBackground: .cardMagic) {
            VStack {
                TechniqueHeaderView()
                SlidingTabView(selection: self.$selectedTabIndex,
                               tabs: ["General", "Steps", "Links", "Data"],
                               font: Font.custom("Apple Chancery", size: 17),
                               activeAccentColor: Color.magicText,
                               selectionBarColor: Color.magicText)
                    .foregroundColor(.magicText)
                    .padding(.bottom, 0)
                
                switch selectedTabIndex {
                case 0:
                    TechniqueGeneralView()
                    
                case 1:
                    StepsView()
                    
                default :
                    Text("Not implemented")
                    
                }
                
//                if selectedTabIndex == 0 {
//                    TechniqueGeneralView()
//                } else {
//                    Text("Hello")
//                    Spacer()
//                    
//                }
                Spacer()
            }
            
        }.navigationBarTitle("Technique", displayMode: .inline)
    }
}

struct TechniqueView_Previews: PreviewProvider {
    static var previews: some View {
        TechniqueView()
    }
}

struct TechniqueHeaderView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "chevron.backward")
            }).foregroundColor(.magicText).opacity(0.6)
            Spacer()
            Text("Tabled riffle shuffle")
                .font(Font.custom("Papyrus", size: 25))
                .foregroundColor(.magicTechniqueHeader)
                .shadow(color: .magicShadow
                        , radius: 1, x: 2, y: 2)
                .layoutPriority(1)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "chevron.forward")
            }).foregroundColor(.magicText).opacity(0.6)
            Spacer()
        }
        .padding(.bottom, -20)
        .padding(.top, 20)
        
    }
    
}
