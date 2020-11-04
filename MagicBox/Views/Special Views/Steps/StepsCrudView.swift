//
//  StepsCrudView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-11-01.
//

import Foundation
import SwiftUI
import MobileCoreServices

struct StepListItem: Identifiable {
    let id = UUID()
    let title: String
}

struct StepsCrudView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    @State private var items: [StepListItem] = []
    @State private var editMode = EditMode.inactive
    private static var count = 0
        
    
    var body: some View {
        
        NavigationView {
            MagicBackground(magicBackground: .cardMagic) {
            List {
                ForEach(items) { item in
                    Text(item.title)
                }
                .onDelete(perform: onDelete)
                .onMove(perform: onMove)
                .onInsert(of: [String(kUTTypeURL)], perform: onInsert)
            }
            .navigationBarTitle("Comments", displayMode: .inline )
            .navigationBarItems(leading: EditButton(), trailing: addButton)
            .environment(\.editMode, $editMode)
            .listStyle(InsetGroupedListStyle())
            .opacity(0.7)
            
        }
        }.foregroundColor(.magicText)
        .onAppear {
             UINavigationBar.appearance().titleTextAttributes =  [.font : UIFont(name: "Papyrus", size: 30)!, NSAttributedString.Key.foregroundColor:UIColor(Color.magicText)]
            setNavigatorViewAppearance(section: .card, colorScheme: colorScheme)
            setNavigatorViewAppearance(section: .card, colorScheme: colorScheme)
        }
    }
    
    private var addButton: some View {
        switch editMode {
        case .inactive:
            return AnyView(Button(action: onAdd)
            { NavigationLink(destination: StepsAddView(items: $items).environment(\.colorScheme, self.colorScheme),
                             label: {Image(systemName: "plus")}
            
            )})
        default:
            return AnyView(EmptyView())
        }
    }
    
    private func onAdd() {
        print("Adding to list")
        
        Self.count += 1
    }
    
    private func onDelete(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    // 3.
    private func onMove(source: IndexSet, destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    
    /// Give the possibility to drag url:s into the application
    /// - Parameters:
    ///   - offset: dropped item offset
    ///   - itemProvider: an array of NSItemProvider instances.  allows us to extract the URLs.
    private func onInsert(at offset: Int, itemProvider: [NSItemProvider]) {
        for provider in itemProvider {
            
            /// Check that the provider recognizes the piece of data as a URL.
            if provider.canLoadObject(ofClass: URL.self) {
            
                /// Asynchronously load the dropped URL.
                _ = provider.loadObject(ofClass: URL.self) { url, error in
                    DispatchQueue.main.async {
                
                        /// Insert the URL into the list.
                        url.map { self.items.insert(StepListItem(title: $0.absoluteString), at: offset) }
                    }
                }
            }
        }
    }
}

struct StepsCrudView_Preview: PreviewProvider {
    static var previews: some View {
        StepsCrudView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        StepsCrudView().preferredColorScheme(.light)
    }
}
