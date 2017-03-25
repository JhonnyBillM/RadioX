//
//  Show+CoreDataProperties.swift
//  RadioX
//
//  Created by fitmap on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Show {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Show> {
        return NSFetchRequest<Show>(entityName: "Show");
    }

    @NSManaged public var name: String?
    @NSManaged public var showID: Int64
    @NSManaged public var rating: Int64
    @NSManaged public var logo: NSData?
    @NSManaged public var descrip: String?
    @NSManaged public var radioID: Int64
    @NSManaged public var schedule: NSSet?
    @NSManaged public var showHost: NSSet?
    @NSManaged public var favShow: NSSet?

}

// MARK: Generated accessors for schedule
extension Show {

    @objc(addScheduleObject:)
    @NSManaged public func addToSchedule(_ value: Schedule)

    @objc(removeScheduleObject:)
    @NSManaged public func removeFromSchedule(_ value: Schedule)

    @objc(addSchedule:)
    @NSManaged public func addToSchedule(_ values: NSSet)

    @objc(removeSchedule:)
    @NSManaged public func removeFromSchedule(_ values: NSSet)

}

// MARK: Generated accessors for showHost
extension Show {

    @objc(addShowHostObject:)
    @NSManaged public func addToShowHost(_ value: ShowHost)

    @objc(removeShowHostObject:)
    @NSManaged public func removeFromShowHost(_ value: ShowHost)

    @objc(addShowHost:)
    @NSManaged public func addToShowHost(_ values: NSSet)

    @objc(removeShowHost:)
    @NSManaged public func removeFromShowHost(_ values: NSSet)

}

// MARK: Generated accessors for favShow
extension Show {

    @objc(addFavShowObject:)
    @NSManaged public func addToFavShow(_ value: FavShow)

    @objc(removeFavShowObject:)
    @NSManaged public func removeFromFavShow(_ value: FavShow)

    @objc(addFavShow:)
    @NSManaged public func addToFavShow(_ values: NSSet)

    @objc(removeFavShow:)
    @NSManaged public func removeFromFavShow(_ values: NSSet)

}
