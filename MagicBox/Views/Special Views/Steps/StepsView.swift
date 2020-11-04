//
//  StepsView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-11-01.
//

import SwiftUI

let StepsHeaderArray: [String] = [
    "First step is to get the deck into lefthand dealers-grip",
    "Shuffle",
    "Bring deck to the other hand",
    "Palm it",
    "First step is to get the deck",
    "Shuffle",
    "Bring deck to the other hand",
    "Palm it",
    "First step is to get the deck",
    "Shuffle",
    "Bring deck to the other hand",
    "Palm it",
    "First step is to get the deck",
    "Shuffle",
    "Bring deck to the other hand",
    "Palm it",
    "First step is to get the deck",
    "Shuffle",
    "Bring deck to the other hand",
    "Palm it",
    "First step is to get the deck",
    "Shuffle",
    "Bring deck to the other hand",
    "Palm it",
    "First step is to get the deck",
    "Shuffle",
    "Bring deck to the other hand",
    "Palm it",
]
let StepsArray: [String] = [
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

struct StepsView: View {
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
                        StepsCrudView().environment(\.colorScheme, self.colorScheme)
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "plus").foregroundColor(.magicText)
                    })
                    .modifier(RowButton())
                }.offset(y: 20)
            }.padding(0)
            
            List {
                ForEach(0..<12) { ix in
                    StepRowItemView(description: StepsArray[ix], header: StepsHeaderArray[ix], index: ix)
                }
            }.listStyle(GroupedListStyle())
            .frame(height: 300)
            .modifier(MagicList(inset: false))
            .padding(.top, 2)
            
        }
        
        
    }
}


struct StepRowItemView: View {
    @State var isProfileExpanded = false
    @State var isToggle = false
    @State private var desc: String = ""
    var description: String = ""
    var header: String = "header"
    var index: Int = 0
    
    init(description: String, header: String, index: Int) {
        self._desc.wrappedValue = description
        self.header = header
        self.description = description
        self.index = index
    }
    
    var body: some View {
        //        Form {
        //            Section {
        
        DisclosureGroup(isExpanded: $isProfileExpanded) {
            ZStack {
                VStack(alignment: .leading) {
                    Text("First Name")
                    Text("Last Name")
                    Text(description)
                    Text("Email")
                    DatePicker("Birthday", selection: .constant(Date()))
                    Toggle("Push", isOn: $isToggle)
                        .toggleStyle(MagicToggleStyle())
                    LinksListView()
                }}
            
        } label: {
            HStack {
                Image(systemName: "\(index).circle.fill").resizable().frame(width: 25, height: 25).foregroundColor(Color.magicListBullet)
                Text(self.header)
                    .font(.body)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            }
            
        }
    }
    //        }
    //    }
}

struct StepsView_Previews: PreviewProvider {
    static var previews: some View {
        MagicBackground(magicBackground: .cardMagic) {
            //            MagicSection {
            StepsView()
            //            }
        }.preferredColorScheme(.light)
        MagicBackground(magicBackground: .cardMagic) {
            //            MagicSection {
            StepsView()
            //            }
        }.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
