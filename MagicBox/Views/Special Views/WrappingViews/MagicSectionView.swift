//
//  MagicSectionView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-29.
//



import SwiftUI




/// Custom section that mimics the style of an section inside a listView without the need for a list

struct MagicSection<Content: View>: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    let content: Content
    let header: String?
    
    /// opacity for the roundedRectangle around the content, if inset = false opacity is 0 resulting in the rectangle not showing
    var bgOpacity: Double = 0.15
    var inset: Bool = true
    var insetSpacing: CGFloat = 15
    
    /// Initializer
    /// - Parameters:
    ///   - header: header for the section
    ///   - inset: wether an roundedRectangle area should be around the content or not
    ///   - content: closure view
    init(header: String? = nil, inset: Bool? = true, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.header = header
        self.inset = inset!
        self.insetSpacing = inset! ? 15 : 0
    }
    
    var body: some View {
        HStack {
            HStack {
                
                VStack(alignment: .leading) {
                    if let header = self.header {
                        Text("\(header)")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(.magicSectionHeader)
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                            .opacity(colorScheme == .dark ? 0.7 : 1)
                            .padding([.leading, .trailing], 15)
                            
                    }
                    HStack {
                        VStack(alignment: .leading) {
                            self.content
                                .padding([.leading, .trailing], self.insetSpacing)
                                .padding([.top, .bottom], 10)
                            
                        }
                        Spacer()
                    }
                    .background(RoundedRectangle(cornerRadius: 15).opacity(self.inset ? ( colorScheme == .dark ? 0.15 : 1) : 0))
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.white)
                    
                }
            }
        }
        .padding()
        .background(Color.magicShadow).opacity(0.5)
    }
}


struct MagicSectionView_Previews: PreviewProvider {
    
    /// test preview to compare a section in a normal list to the custom section: MagicSection
    static var previews: some View {
        ScrollView {
            MagicBackground(magicBackground: .cardMagic) {
                List {
                    Section(header: Text("Header normal list and section")) {
                        Text("Test").foregroundColor(.magicText)
                        Text("Test2")
                    }
                    
                }.listStyle(InsetGroupedListStyle())
                .opacity(0.5)
                MagicSection(header: "Header custom section") {
                    Text("Test").foregroundColor(.magicText)
                    Text("Test2")
                }
                MagicSection(header: "Header") {
                    KeyValueView(key: "Technique", value: "Tabbles Sprititual", useDivider: true)
                    KeyValueView(key: "Technique", value: "Tabbles Sprititual", useDivider: true)
                    KeyValueView(key: "Technique", value: "Tabbles Sprititual")
                }
                
                MagicSection(header: "Section with list", inset: false) {
                    List {
                        ForEach(0..<12) { ix in
                            KeyValueView(key: "Index", value: "index is \(ix)")
                        }
                    }
                    .listStyle(InsetGroupedListStyle())
                    .frame(height: 400)
                    .padding(0)
                }
                }
        }
    }
}
