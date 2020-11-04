//
//  TechniqueDataView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-22.
//

import SwiftUI

struct TechniqueGeneralView: View {
    let difficulty: Difficulty = Difficulty.allCases.randomElement()!
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                MagicSection(header: "Info") {
                    KeyValueView(key: "Rating", value: AnyView(RatingsView(count: Int.random(in: 1...5))), useDivider: true)
                    KeyValueView(key: "Difficulty", value: AnyView(HStack {
                                                                    DifficultyView(difficulty: difficulty)
                        Image(systemName: "circlebadge.fill").foregroundColor(difficulty.badgeColor()).shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 2, x: 1, y: 1)
                    }), useDivider: true)
                                                                   
                    KeyValueView(key: "Technique", value: "Tabled riffle shuffle", useDivider: true)
                    KeyValueView(key: "Origin", value: "Guiseppi Tradalutti")
                }
                
                MagicSection(header: "Description") {
                    Text("This shuffle is done by putting the deck on the table and riffle lika an idiot. You can also try to put some needles in your eyes to make it harder. If you still think it is too easy, practice doing it with bricks")
                        .font(.callout)
                        .foregroundColor(.magicText)
                }
//                MagicSection(header: "Comments", inset: false) {
                    CommentsView()
//                }
            }
        }
    }
}

struct TechniqueDataView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            CardMagicBackgroundView()
            TechniqueGeneralView()
        }.preferredColorScheme(.light)
        ZStack {
            CardMagicBackgroundView()
            TechniqueGeneralView()
        }.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}






//func HoleShapeMask(in rect: CGRect) -> Path {
//    var shape = Rectangle().path(in: rect)
//    shape.addPath(Circle().path(in: rect))
//    return shape
//}
//
//struct TestInvertedMask: View {
//
//    let rect = CGRect(x: 0, y: 0, width: 300, height: 100)
//    var body: some View {
//        Rectangle()
//            .fill(Color.blue)
//            .frame(width: rect.width, height: rect.height)
//            .mask(HoleShapeMask(in: rect).fill(style: FillStyle(eoFill: true)))
//    }
//}
