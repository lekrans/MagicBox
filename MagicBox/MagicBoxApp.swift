//
//  MagicBoxApp.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-18.
//

import SwiftUI

@main
struct MagicBoxApp: App {
    let persistenceController = PersistenceController.shared
    @State private var isDark: Bool = true
    
   
    

    var body: some Scene {
        
        WindowGroup {
            return ContentView(isDark: $isDark)
                .preferredColorScheme(self.isDark ? /*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/ : .light)
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

