//
//  FavShow+CoreDataProperties.swift
//  RadioX
//
//  Created by fitmap on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension FavShow {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavShow> {
        return NSFetchRequest<FavShow>(entityName: "FavShow");
    }

    @NSManaged public var showID: Int64
    @NSManaged public var userID: Int64

}
