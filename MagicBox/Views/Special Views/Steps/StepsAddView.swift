//
//  StepsAddView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-11-01.
//

import SwiftUI

struct StepsAddView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    @State var text: String = ""
    @Binding var items: [StepListItem]
    var body: some View {
        
        return MagicBackground(magicBackground: .cardMagic) {
            Text("Here you can type your own comments to the stuff you find everywhere here in the magic-box application")
                .padding()
                .background(Color.magicBrown.opacity(0.2))
                .foregroundColor(.magicText)
                .border(Color.magicBrownBorder, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Form {
                Section(header: Text("Comment")) {
                    TextEditor(text: $text)
                }
                
                Button(action: {
                    self.items.append(
                        StepListItem(title: $text.wrappedValue))
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack {
                        Text("Save")
                            .modifier(MagicButton())
                        Spacer()
                    }
                })
                
            }
            .opacity(0.8)
            .navigationBarTitle(Text("Add Comment"))
        }.padding(.top, 2)
        
    }
}

struct StepsAddView_Previews: PreviewProvider {
    static var previews: some View {
        StepsAddView(items: .constant([StepListItem(title: "hello")]))
        StepsAddView(items: .constant([StepListItem(title: "hello")])).preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
