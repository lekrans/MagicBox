//
//  ContentView.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-18.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @Binding var isDark: Bool
    
    
    
    var body: some View {
        setAppearance(section: .card, colorScheme: colorScheme)
        return ZStack {
            TabView {
                MagicView()
                    .tabItem {
                        Image(systemName: "wand.and.stars")
                        Text("Magic")
                    }
                PracticeView()
                    .tabItem {
                        Image(systemName: "book")
                        Text("Practice")
                    }
               LibraryView()
                    .tabItem {
                        Image(systemName: "books.vertical")
                        Text("Library")
                    }

                SettingsView(isDark: $isDark)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Setting")
                    }
                
            }
            
            
        }
        .accentColor(colorScheme == .dark ? .magicText : .magicBrown)
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//        .id(colorScheme.self) // This one was great to refresh a view
        
        
        
    }
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isDark: .constant(true)).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext).colorScheme(.dark)
    }
}
