//
//  Modifiers.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-19.
//

import Foundation
import SwiftUI






//
//
//  Buttons
//  ---------------------------------
//




/// Big solid button with shadowborder and gradient
struct MagicButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding([.top, .bottom], 8)
            .padding([.leading, .trailing], 12)
            //            .frame(width: 230, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: [.magicLightBrown, .magicBrown]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(.magicBrown))
            //.padding(20)
            .shadow(color: .magicShadow, radius: 2, x: 3, y: 3)
            
    }
}

/// The Square buttons on the main page (4 .. cardmagic, coinmagic...)
struct LargeSquareButton: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: [.magicText, .magicBrown]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(.magicBrown))
            .padding(20)
            .shadow(color: .magicShadow, radius: 2, x: 3, y: 3)
    }
}


/// Buttons above lists and such.. small, transparent with border
struct RowButton: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(height: 14 )
            .font(.caption)
            .foregroundColor(.magicText)
            .padding([.top, .bottom], 4)
            .padding([.leading, .trailing], 12)
            .overlay(RoundedRectangle(cornerRadius: 4)
            .stroke())
    }
}





//
//
//  Borders
//  --------------------------------
//





//
//
//  Lists
//  --------------------------------
//


/// Basic list layout with listStyle, textColor, opacity
struct MagicList: ViewModifier {
    var inset: Bool = false
    
    func body(content: Content) -> some View {
            content
                .padding(.top, -10)
                .foregroundColor(.magicText)
                .listStyle(InsetGroupedListStyle())
                .opacity(0.6)
    }
}







//
//
//  Text
//  --------------------------------
//


/// The header text style in sections
struct SectionText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .foregroundColor(Color.magicSectionHeader)
                .font(.caption)
    }
}






//
//
//  Toggle
//  --------------------------------
//


struct MagicToggle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .toggleStyle(MagicToggleStyle())
    }
}




//
//
//  PPREVIEWS
//  ================================================================================
//

struct ModifierPreviews: View {
    var body: some View {
        VStack {

            //MARK: MagicButton
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("MagicButton")
                    .modifier(MagicButton())
            })
            
            //MARK: LargeSquareButton - the buttons on the main view
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Large Square Button")
                    .modifier(LargeSquareButton())
            })

            //MARK: RowButton - used above lists and such
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("RowButton")
                    .modifier(RowButton())
            })
            
            //MARK: MagicList
            List {
                ForEach(1..<5) { ix in
                    Text("This is the number \(ix)")
                }
            }.modifier(MagicList())
            .frame(height: 200)

            //MARK: SectionText - the header text in sections
            Text("SectionText")
                .modifier(SectionText())


            
        }
    }
}



struct modifierPreviews: PreviewProvider {
    static var previews: some View {
        ModifierPreviews().preferredColorScheme(ColorScheme.light)
        ModifierPreviews().preferredColorScheme(ColorScheme/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

//            .toolbar {
//                           ToolbarItem(placement: .primaryAction) {
//                               Menu {
//                                   Picker(selection: $sort, label: Text("Sorting options")) {
//                                       Text("Size").tag(0).font(Font.custom("Luminari", size: 20))
//                                       Text("Date").tag(1).font(Font.custom("Luminari", size: 20))
//                                       Text("Location").tag(2).font(Font.custom("Luminari", size: 20))
//                                   }
//                               }
//                               label: {
//                                   Label("Sort", systemImage: "plus")
//                               }
//                               .foregroundColor(.magicTan)
//
//                           }
//        }

