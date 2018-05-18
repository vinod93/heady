//
//  Variant+CoreDataProperties.swift
//  Heady Assignment
//
//  Created by Vinod Rathod on 18/05/18.
//  Copyright © 2018 Vinod Rathod. All rights reserved.
//
//

import Foundation
import CoreData


extension Variant {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Variant> {
        return NSFetchRequest<Variant>(entityName: "Variant")
    }

    @NSManaged public var id: Int16
    @NSManaged public var color: String?
    @NSManaged public var size: Int16
    @NSManaged public var price: Int32
    @NSManaged public var product: Product?

}
