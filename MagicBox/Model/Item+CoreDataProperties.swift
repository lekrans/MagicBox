//
//  Item+CoreDataProperties.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-18.
//
//

import Foundation
import CoreData
import SwiftUI


extension Item {

   
    @NSManaged public var timestamp: Date?

    
    static func createWith(timestamp: Date?, using viewContext: NSManagedObjectContext) {
        let item = Item(context: viewContext)
        item.timestamp = Date()
        
        do {
            try viewContext.save()
        } catch  {
            let error = error as NSError
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    }
    
    static func basicFetchRequest() -> FetchRequest<Item> {
        FetchRequest(entity: Item.entity(), sortDescriptors: [])
    }

    
}

extension Item : Identifiable {

}
