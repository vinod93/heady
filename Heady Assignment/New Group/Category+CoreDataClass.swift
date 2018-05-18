//
//  Category+CoreDataClass.swift
//  Heady Assignment
//
//  Created by Vinod Rathod on 18/05/18.
//  Copyright © 2018 Vinod Rathod. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit

@objc(Category)
public class Category: NSManagedObject {

    convenience init?(id: Int, name: String) {
        let appDelegate =   UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Category.entity(), insertInto: context)
        
        self.id     =   Int16(id)
        self.name   =   name
    }
}
