//
//  Employee+CoreDataProperties.swift
//  Ios_project_2
//
//  Created by Mayurii Gajbhiye on 19/08/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    
    //Attribute...................
    @NSManaged public var name: String?

}
