//
//  FavShow.swift
//  RadioX
//
//  Created by Jhonny Bill Mena on 4/1/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit
import CoreData

class FavShow: NSManagedObject {
    
    
    func addToFavorite(show: Int){
        
        let context = AppDelegate.viewContext
        
        let favShow = NSEntityDescription.insertNewObject(forEntityName: "FavShow", into: context)
        
        favShow.setValue(show, forKey: "showID")
        favShow.setValue(01, forKey: "userID")
        
        
        ///////////////////////////////////
        //          Saving data          //
        ///////////////////////////////////
        
        
        do{
            try context.save()
        }catch{
            //bueeeeno
        }
    
    }
    
    func fetchUserFavoriteShows() -> [Int] {
        
        var favShows = [Int]()
        
        let fetchRequest:NSFetchRequest<FavShow> = FavShow.fetchRequest()
        
        do{
            
            let searchResult = try AppDelegate.viewContext.fetch(fetchRequest)
            
            for fav in searchResult{
                favShows.append(Int(fav.showID))
            }
            
        }catch{
            //Bueh
        }
        
        return favShows
        
    }
    
    
    func isFavorite(showID: Int) -> Bool {
        
        let favShows = fetchUserFavoriteShows()
        
        
        for show in favShows{
            if(showID == show){
                return true
            }
        }
        
        return false
    }

}
