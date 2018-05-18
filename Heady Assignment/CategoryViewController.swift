//
//  CategoryViewController.swift
//  Heady Assignment
//
//  Created by Vinod Rathod on 18/05/18.
//  Copyright © 2018 Vinod Rathod. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class CategoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        requestCategories()
    }

    
    func requestCategories() {
        Alamofire.request("https://stark-spire-93433.herokuapp.com/json").responseJSON { dataResponse in
            
            switch dataResponse.result {
            case .success(let value):
                let json    =   JSON(value)
                
                let jsonCategories  =   json["categories"].arrayValue
                
                let allCategories   =   jsonCategories.flatMap { json -> Category? in
                    let category = Category(id: json["id"].intValue, name: json["name"].stringValue)
                    
                    do {
                        try category?.managedObjectContext?.save()
                    }
                    catch {
                        print("couldn't save the category")
                    }
                    
                    return category
                }
                
                
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

}
