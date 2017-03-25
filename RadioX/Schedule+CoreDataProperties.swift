//
//  Schedule+CoreDataProperties.swift
//  RadioX
//
//  Created by fitmap on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Schedule {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Schedule> {
        return NSFetchRequest<Schedule>(entityName: "Schedule");
    }

    @NSManaged public var scheduleID: Int64
    @NSManaged public var showID: Int64
    @NSManaged public var descrip: String?
    @NSManaged public var startTime: NSDate?
    @NSManaged public var endTime: NSDate?

}
