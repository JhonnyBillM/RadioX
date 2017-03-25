//
//  ShowHost+CoreDataProperties.swift
//  RadioX
//
//  Created by fitmap on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension ShowHost {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ShowHost> {
        return NSFetchRequest<ShowHost>(entityName: "ShowHost");
    }

    @NSManaged public var hostID: Int64
    @NSManaged public var showID: Int64

}
