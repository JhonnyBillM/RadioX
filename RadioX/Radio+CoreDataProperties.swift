//
//  Radio+CoreDataProperties.swift
//  RadioX
//
//  Created by fitmap on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Radio {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Radio> {
        return NSFetchRequest<Radio>(entityName: "Radio");
    }

    @NSManaged public var name: String?
    @NSManaged public var direction: String?
    @NSManaged public var phoneNumber: Int32
    @NSManaged public var soacialNetworks: String?
    @NSManaged public var radioID: Int16
    @NSManaged public var twitter: String?
    @NSManaged public var facebook: String?
    @NSManaged public var instagram: String?
    @NSManaged public var snapchat: String?
    @NSManaged public var eMail: String?
    @NSManaged public var shows: NSSet?

}

// MARK: Generated accessors for shows
extension Radio {

    @objc(addShowsObject:)
    @NSManaged public func addToShows(_ value: Show)

    @objc(removeShowsObject:)
    @NSManaged public func removeFromShows(_ value: Show)

    @objc(addShows:)
    @NSManaged public func addToShows(_ values: NSSet)

    @objc(removeShows:)
    @NSManaged public func removeFromShows(_ values: NSSet)

}
