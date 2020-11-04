//
//  TechniqueStepByStepListView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-25.
//

import SwiftUI

struct StepByStepItem {
    var id: Int
    var title: String
    var Description: String
    var cardState: CardState
}

struct TechniqueStepByStepView: View {
    var item: CardMagicStep
    var body: some View {
        HStack {
            Image(systemName: "circlebadge.fill")
            VStack (alignment: .leading) {
                Text(item.title)
                    .foregroundColor(.magicText)
                Text(item.description)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Card State")
                        .font(.caption)
                        .foregroundColor(.magicText)
                        .padding(6)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.magicText, lineWidth: 3))
            }
        }
    }
}

struct TechniqueStepByStepListView: View {
    var body: some View {
        let steps: [CardMagicStep] = StepByStepList.exampleData().steps!

        return VStack {
            ForEach(steps, id: \.id) {step -> TechniqueStepByStepView in
                return TechniqueStepByStepView(item: step)
            }
        }
    }
}

struct TechniqueStepByStepListView_Previews: PreviewProvider {
    static var previews: some View {
        TechniqueStepByStepListView()
    }
}
