//
//  Trip+CoreDataProperties.swift
//  project1
//
//  Created by Asoooy on 11/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//
//

import Foundation
import CoreData


extension Trip {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Trip> {
        return NSFetchRequest<Trip>(entityName: "Trip")
    }

    @NSManaged public var activity: String?
    @NSManaged public var name: String?

}
