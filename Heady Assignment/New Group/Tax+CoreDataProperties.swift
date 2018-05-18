//
//  Tax+CoreDataProperties.swift
//  Heady Assignment
//
//  Created by Vinod Rathod on 18/05/18.
//  Copyright © 2018 Vinod Rathod. All rights reserved.
//
//

import Foundation
import CoreData


extension Tax {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tax> {
        return NSFetchRequest<Tax>(entityName: "Tax")
    }

    @NSManaged public var name: String?
    @NSManaged public var value: Double
    @NSManaged public var product: Product?

}
