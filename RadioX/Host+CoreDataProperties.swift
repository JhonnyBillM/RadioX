//
//  Host+CoreDataProperties.swift
//  RadioX
//
//  Created by fitmap on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Host {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Host> {
        return NSFetchRequest<Host>(entityName: "Host");
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var age: Int16
    @NSManaged public var hostID: Int64
    @NSManaged public var twitter: String?
    @NSManaged public var facebook: String?
    @NSManaged public var instagram: String?
    @NSManaged public var snapchat: String?
    @NSManaged public var email: String?
    @NSManaged public var showHost: NSSet?

}

// MARK: Generated accessors for showHost
extension Host {

    @objc(addShowHostObject:)
    @NSManaged public func addToShowHost(_ value: ShowHost)

    @objc(removeShowHostObject:)
    @NSManaged public func removeFromShowHost(_ value: ShowHost)

    @objc(addShowHost:)
    @NSManaged public func addToShowHost(_ values: NSSet)

    @objc(removeShowHost:)
    @NSManaged public func removeFromShowHost(_ values: NSSet)

}
