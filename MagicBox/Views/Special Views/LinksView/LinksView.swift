//
//  LinksView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-11-03.
//

import SwiftUI

struct LinksView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State private var isLinkExpanded: Bool = false
    @State private var isToggle: Bool = false
    
    var body: some View {
        DisclosureGroup(isExpanded: $isLinkExpanded) {
            ZStack {
                VStack(alignment: .leading) {

                    HStack {
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Edit").modifier(RowButton())
                        })
                        
                    }
                    Rectangle().frame(height: 2).opacity(0.5).foregroundColor(.magicBrownBorder)
                    KeyValueView(key: "Rating", value: AnyView(RatingsView(count: 4)))
                    KeyValueView(key: "Link", value: "Video")
                    KeyValueView(key: "Location", value: "Local storage")
                    KeyValueView(key: "Address", value: "documents/magic/daryl/vol4/32_riffle_shuffle")
                        .font(Font.system(size: 10))
                    
                    Text("Comment")
                        .modifier(SectionText()).padding(.top, 10)
                    Text("This is a pretty good explanation.. especially at 02:34 where he shows how to do it from overhead")
                    .font(Font.system(size: 12))
                                                                
                                                                    
                }.padding()}
        } label: {
            ZStack {
                HStack {
                    Image("linkImageDaryl")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2).foregroundColor(.magicBrownBorder))
                        .padding([.leading, .trailing], 7)
                        
                    VStack(alignment: .leading) {
                        Text("Title:")
                            .font(.caption)
                            .foregroundColor(.magicText)
                        Text("Riffle Shuffle")
                            .font(Font.system(size: 14))
                            .foregroundColor(.magicText)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Description:")
                            .font(.caption)
                            .foregroundColor(.magicText)
                        Text("Daryl teaches some variations of the riffle shuffle")
                            .font(Font.system(size: 14))
                            .foregroundColor(.magicText)

                    }
                    
                }
                
                
            }
            
        }
//        .background(Image(colorScheme == .dark ? "brownLeather2" : "lightBeigeLeather" )
//                        .resizable(resizingMode: .tile).scaledToFill())
//        .clipShape(Rectangle())
    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView().preferredColorScheme(.light)
        LinksView().preferredColorScheme(.dark)
    }
}
