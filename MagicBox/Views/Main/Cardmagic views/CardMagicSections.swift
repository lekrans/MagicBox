//
//  CardMagicSections.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-19.
//

import SwiftUI



struct CardMagicSections: View {
    @State private var sort: Int = 0
    @State private var selectedTabIndex = 0
    

    var body: some View {
        VStack {
            SlidingTabView(selection: self.$selectedTabIndex,
                           tabs: ["Techniques", "Tricks", "Routines"],
                           font: Font.custom("Apple Chancery", size: 20),
                           activeAccentColor: Color.magicText,
                           selectionBarColor: Color.magicText).foregroundColor(.magicText)
            if selectedTabIndex == 0 {
                    CardMagicTechniqueListView()
            } else {
                    Text("Hello")
                    Spacer()
                
            }
                            
        }
    }
}

struct CardMagicTechniqueListView: View {
    var body: some View {
        List(sampleMenuItems, children: \.subMenuItems) { item in
            HStack {
                if item.isTechnique {
                    TechniqueListRowView(item: item)
                }
                
                if !item.isTechnique {
                    CategoryListRowView(item: item)
                }
                
            }
            
        }
        .modifier(MagicList())
    }
}



struct TechniqueListRowView: View {
    let item: MenuItem
    var body: some View {
        NavigationLink(
            destination: TechniqueView(),
            label: {
                HStack {
                    Image("cards-icon-blue")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                        .padding(.trailing, 4)
                    
                    VStack(alignment: .leading) {
                    Text(item.name)
                        .shadow(color: .magicShadow, radius: 1, x: 4, y: 4)
                        .foregroundColor(.magicTechniqueHeader)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                        .font(.body)
                    Text("This blablabla is of another kind than the usual thing that we want to write about. It was created by the famouse Grosse").font(.caption)
                        HStack(spacing: 10) {
                            Text("Difficulty: ").font(.caption).foregroundColor(.gray).padding(.trailing, -5)
                            DifficultyView(difficulty: .veryHard).font(Font.system(size: 10)).lineLimit(1)
                            RatingsView(count: 5, fontSize: 9)
                            
                        }
                    }
                }
            })
    }
}

struct CategoryListRowView: View {
    let item: MenuItem
    var body: some View {
        Text(item.name)
            .font(Font.custom("Apple Chancery", size: 20))
            .shadow(color: .magicShadow, radius: 1, x: 2, y: 2
            )
            .padding(.leading, 10)
    }
}


struct CardMagicSections_Previews: PreviewProvider {
    static var previews: some View {
        CardMagicSections().colorScheme(.light)
        CardMagicSections().colorScheme(.dark)
    }
}



