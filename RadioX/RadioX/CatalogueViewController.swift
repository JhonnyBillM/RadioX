//
//  CatalogueViewController.swift
//  RadioX
//
//  Created by zelo on 3/27/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit
import CoreData


class CatalogueViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    //var imageView = UIImage(named: "1_1")
    var imageView: [UIImage] = [UIImage(named: "1_1")!, UIImage(named: "1_3")!, UIImage(named: "1_5")!]
    var items = ["1", "2", "3"]
    
    
    
    
    ///////////////////////////////////
    //          Fetch Data           //
    ///////////////////////////////////
    
    func fetchRadioData(){
        
        let fetchRequest:NSFetchRequest<Show> = Show.fetchRequest()
        
        do{
            
            let searchResult = try AppDelegate.viewContext.fetch(fetchRequest)
            
            for show in searchResult {
                
                if let photoinData = show.value(forKey: "logo") as? UIImage{
                    imageView.append(photoinData)
                }
            
            }
            
        }catch{
            
        }
        
    }

    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CatalogueCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        // cell.label.text = self.items[indexPath.item]
        // cell.image.image = imageView
        
        cell.image.image = self.imageView[indexPath.item]
        cell.backgroundColor = UIColor.white // make cell more visible in our example project
        cell.layer.cornerRadius = 6
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }

}
