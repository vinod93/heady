//
//  Product+CoreDataProperties.swift
//  Heady Assignment
//
//  Created by Vinod Rathod on 18/05/18.
//  Copyright © 2018 Vinod Rathod. All rights reserved.
//
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var id: Int16
    @NSManaged public var name: String?
    @NSManaged public var date_added: NSDate?
    @NSManaged public var category: Category?
    @NSManaged public var variants: NSOrderedSet?
    @NSManaged public var tax: Tax?

}

// MARK: Generated accessors for variants
extension Product {

    @objc(insertObject:inVariantsAtIndex:)
    @NSManaged public func insertIntoVariants(_ value: Variant, at idx: Int)

    @objc(removeObjectFromVariantsAtIndex:)
    @NSManaged public func removeFromVariants(at idx: Int)

    @objc(insertVariants:atIndexes:)
    @NSManaged public func insertIntoVariants(_ values: [Variant], at indexes: NSIndexSet)

    @objc(removeVariantsAtIndexes:)
    @NSManaged public func removeFromVariants(at indexes: NSIndexSet)

    @objc(replaceObjectInVariantsAtIndex:withObject:)
    @NSManaged public func replaceVariants(at idx: Int, with value: Variant)

    @objc(replaceVariantsAtIndexes:withVariants:)
    @NSManaged public func replaceVariants(at indexes: NSIndexSet, with values: [Variant])

    @objc(addVariantsObject:)
    @NSManaged public func addToVariants(_ value: Variant)

    @objc(removeVariantsObject:)
    @NSManaged public func removeFromVariants(_ value: Variant)

    @objc(addVariants:)
    @NSManaged public func addToVariants(_ values: NSOrderedSet)

    @objc(removeVariants:)
    @NSManaged public func removeFromVariants(_ values: NSOrderedSet)

}
