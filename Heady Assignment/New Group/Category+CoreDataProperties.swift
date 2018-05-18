//
//  Category+CoreDataProperties.swift
//  Heady Assignment
//
//  Created by Vinod Rathod on 18/05/18.
//  Copyright © 2018 Vinod Rathod. All rights reserved.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var id: Int16
    @NSManaged public var name: String?
    @NSManaged public var products: NSOrderedSet?
    @NSManaged public var childCategories: NSOrderedSet?

}

// MARK: Generated accessors for products
extension Category {

    @objc(insertObject:inProductsAtIndex:)
    @NSManaged public func insertIntoProducts(_ value: Product, at idx: Int)

    @objc(removeObjectFromProductsAtIndex:)
    @NSManaged public func removeFromProducts(at idx: Int)

    @objc(insertProducts:atIndexes:)
    @NSManaged public func insertIntoProducts(_ values: [Product], at indexes: NSIndexSet)

    @objc(removeProductsAtIndexes:)
    @NSManaged public func removeFromProducts(at indexes: NSIndexSet)

    @objc(replaceObjectInProductsAtIndex:withObject:)
    @NSManaged public func replaceProducts(at idx: Int, with value: Product)

    @objc(replaceProductsAtIndexes:withProducts:)
    @NSManaged public func replaceProducts(at indexes: NSIndexSet, with values: [Product])

    @objc(addProductsObject:)
    @NSManaged public func addToProducts(_ value: Product)

    @objc(removeProductsObject:)
    @NSManaged public func removeFromProducts(_ value: Product)

    @objc(addProducts:)
    @NSManaged public func addToProducts(_ values: NSOrderedSet)

    @objc(removeProducts:)
    @NSManaged public func removeFromProducts(_ values: NSOrderedSet)

}

// MARK: Generated accessors for childCategories
extension Category {

    @objc(insertObject:inChildCategoriesAtIndex:)
    @NSManaged public func insertIntoChildCategories(_ value: Category, at idx: Int)

    @objc(removeObjectFromChildCategoriesAtIndex:)
    @NSManaged public func removeFromChildCategories(at idx: Int)

    @objc(insertChildCategories:atIndexes:)
    @NSManaged public func insertIntoChildCategories(_ values: [Category], at indexes: NSIndexSet)

    @objc(removeChildCategoriesAtIndexes:)
    @NSManaged public func removeFromChildCategories(at indexes: NSIndexSet)

    @objc(replaceObjectInChildCategoriesAtIndex:withObject:)
    @NSManaged public func replaceChildCategories(at idx: Int, with value: Category)

    @objc(replaceChildCategoriesAtIndexes:withChildCategories:)
    @NSManaged public func replaceChildCategories(at indexes: NSIndexSet, with values: [Category])

    @objc(addChildCategoriesObject:)
    @NSManaged public func addToChildCategories(_ value: Category)

    @objc(removeChildCategoriesObject:)
    @NSManaged public func removeFromChildCategories(_ value: Category)

    @objc(addChildCategories:)
    @NSManaged public func addToChildCategories(_ values: NSOrderedSet)

    @objc(removeChildCategories:)
    @NSManaged public func removeFromChildCategories(_ values: NSOrderedSet)

}
