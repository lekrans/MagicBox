//
//  CommentsView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-27.
//

import SwiftUI

let CommentArray: [String] = [
    "You can learn many card tricks very quickly just by watching the video - just follow the steps, add something yours to presentation and your friends and family will absolutely love it!",
    "Please remember one thing",
    "So even experienced magicians can find here great inspiration and ideas for their magic performances.",
    "he magician begins by handing the spectator the 21-card packet and asking them to look through it and select any one card to remember.",
    "The third time the cards are dealt out, the selection will be the fourth card in which ever pile it ends up in. On the third deal, as soon as the spectator indicates which pile contains the selection, the magician knows that it is the fourth, or middle, card in that pile. If the magician gathers up the piles again, as before with the pile containing the selection in the middle, the selection will be the eleventh card in the 21 card packet.",
    "f 27 cards are used, the procedure is the same but the selection will be the fourteenth card in the packet.",
    "he Twenty-One Card Trick, also known as the 11th card trick or three column trick, is a simple self-working card trick that uses basic mathematics to reveal the user's selected card.",
    "The game uses a selection of 21 cards out of a standard deck.",
    "You can learn many card tricks very quickly just by watching the video - just follow the steps, add something yours to presentation and your friends and family will absolutely love it!",
    "Please remember one thing",
    "So even experienced magicians can find here great inspiration and ideas for their magic performances.",
    "he magician begins by handing the spectator the 21-card packet and asking them to look through it and select any one card to remember.",
    "The third time the cards are dealt out, the selection will be the fourth card in which ever pile it ends up in. On the third deal, as soon as the spectator indicates which pile contains the selection, the magician knows that it is the fourth, or middle, card in that pile. If the magician gathers up the piles again, as before with the pile containing the selection in the middle, the selection will be the eleventh card in the 21 card packet.",
    "f 27 cards are used, the procedure is the same but the selection will be the fourteenth card in the packet.",
    "he Twenty-One Card Trick, also known as the 11th card trick or three column trick, is a simple self-working card trick that uses basic mathematics to reveal the user's selected card.",
    "The game uses a selection of 21 cards out of a standard deck."
]

struct CommentsView: View {
    @State var isShowing: Bool = false
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        VStack(alignment: .leading) {
            MagicSection(inset: false) {
            HStack {
                Text("Comments")
                    .modifier(SectionText())
                Spacer()
                Button(action: {
                    isShowing.toggle()
                }, label: {
                    Text("Edit")
                })
                .modifier(RowButton())
                .sheet(isPresented: self.$isShowing, content: {
                    CommentsCrudView().environment(\.colorScheme, self.colorScheme)
                })

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus").foregroundColor(.magicText)
                })
                .modifier(RowButton())
            }.offset(y: 20)
            }.padding(0)
            List {
                ForEach(1..<12) { ix in
                    Text(CommentArray[ix])
                   
                }
            }.frame(height: 300)
            .modifier(MagicList())
            .padding(.top, 2)
        }
        
        
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        MagicBackground(magicBackground: .cardMagic) {
            MagicSection {
            CommentsView()
            }
        }
    }
}
