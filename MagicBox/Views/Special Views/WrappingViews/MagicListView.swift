//
//  MagicListView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-11-03.
//

import SwiftUI

struct MagicListView<Content: View>: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State var isShowing: Bool = false
    let content: Content
    let header: String?
    let isInset: Bool
    
    
    init(header: String? = nil, isInset: Bool = true,  @ViewBuilder content: () -> Content) {
        self.content = content()
        self.header = header
        self.isInset = isInset
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            MagicSection(inset: self.isInset) {
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
            
            content
            .frame(height: 300)
        .modifier(MagicList(inset: self.isInset))
            .padding(.top, 2)
            
        }

    }
}

struct MagicListView_Previews: PreviewProvider {
    static var previews: some View {
        MagicListView {
            List {
                ForEach(0..<10) {ix in
                    KeyValueView(key: "ListRad", value: String(ix))
                }
            }
        }
    }
}
