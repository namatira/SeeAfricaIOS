//
//  Users+CoreDataProperties.swift
//  project1
//
//  Created by Asoooy on 11/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var email: String?
    @NSManaged public var password: String?

}
