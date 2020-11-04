//
//  MagicCategory+CoreDataProperties.swift
//  MagicBox
//
//  Created by Michael Lekrans on 2020-10-19.
//
//

import Foundation
import CoreData


extension MagicCategory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MagicCategory> {
        return NSFetchRequest<MagicCategory>(entityName: "MagicCategory")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var title: String?

}

extension MagicCategory : Identifiable {

}
