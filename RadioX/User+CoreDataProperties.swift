//
//  User+CoreDataProperties.swift
//  RadioX
//
//  Created by fitmap on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var userID: Int64
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var eMail: String?
    @NSManaged public var favShow: NSSet?

}

// MARK: Generated accessors for favShow
extension User {

    @objc(addFavShowObject:)
    @NSManaged public func addToFavShow(_ value: FavShow)

    @objc(removeFavShowObject:)
    @NSManaged public func removeFromFavShow(_ value: FavShow)

    @objc(addFavShow:)
    @NSManaged public func addToFavShow(_ values: NSSet)

    @objc(removeFavShow:)
    @NSManaged public func removeFromFavShow(_ values: NSSet)

}
