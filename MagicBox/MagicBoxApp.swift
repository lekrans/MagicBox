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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
