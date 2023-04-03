//
//  CDEmployee+CoreDataProperties.swift
//  CoreDataCRUDOperation
//
//  Created by Abhishek Choksi on 03/04/23.
//
//

import Foundation
import CoreData


extension CDEmployee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDEmployee> {
        return NSFetchRequest<CDEmployee>(entityName: "CDEmployee")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var email: String?

    func convertToEmployee() -> Employee {
        return Employee(name: self.name, email: self.email, id: self.id!)
    }
}

extension CDEmployee : Identifiable {

}
