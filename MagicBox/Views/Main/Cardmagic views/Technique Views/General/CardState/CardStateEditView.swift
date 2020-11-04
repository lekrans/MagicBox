//
//  CardStateEditView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-25.
//

import SwiftUI

struct CardStateEditView: View {
    @State private var lHand: CardState = CardState(grip: .dealerGrip)
    @State private var rHand: CardState = CardState(grip: .dealerGrip)

    @State private var lgrip: CardStateGrip = CardStateGrip.dealerGrip
    @State private var lpack: CardStatePack = CardStatePack.deck
    @State private var lposition: CardStateCardPosition = CardStateCardPosition.none


    @State private var rgrip: CardStateGrip = CardStateGrip.dealerGrip
    @State private var rpack: CardStatePack = CardStatePack.deck
    @State private var rposition: CardStateCardPosition = CardStateCardPosition.none

    
    var body: some View {
        //NavigationView {
            Form {
                CardStateEditViewSection(cardState: $lHand)
                CardStateEditViewSection(cardState: $rHand)                
            }
        //}
    }
}




 
struct CardStateEditView_Previews: PreviewProvider {
    static var previews: some View {
        CardStateEditView()
    }
}

struct CardStateEditViewSection: View {
    @Binding var cardState: CardState
    var body: some View {
        Section(header: Text("Left hand").font(.caption)) {
            //                    TextField("Left hand", text: $checkAmount)
            //                        .keyboardType(.decimalPad)
            //
            Picker("Pack", selection: $cardState.pack) {
                ForEach(CardStatePack.allCases, id: \.self) { number in
                    Text(number.rawValue)
                }
            }
            
            Picker("Grip", selection: $cardState.grip) {
                ForEach(CardStateGrip.allCases, id: \.self) { number in
                    Text(number.rawValue)
                }
            }
            
            Picker("Spectator Card Position", selection: $cardState.spectatorCard) {
                ForEach(CardStateCardPosition.allCases, id: \.self) { number in
                    Text(number.rawValue)
                }
            }
            
            Picker("Force Card Position", selection: $cardState.forceCard) {
                ForEach(CardStateCardPosition.allCases, id: \.self) { number in
                    Text(number.rawValue)
                }
            }
            
            Picker("Key Card Position", selection: $cardState.keyCard) {
                ForEach(CardStateCardPosition.allCases, id: \.self) { number in
                    Text(number.rawValue)
                }
            }
            
            HStack{
                Toggle(isOn: $cardState.aBreak, label: {
                    Text("Break")
                })
            }
        }.font(.body)
    }
}
