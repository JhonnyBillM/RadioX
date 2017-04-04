//
//  CatalogueViewController.swift
//  RadioX
//
//  Created by zelo on 3/27/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit
import CoreData


class CatalogueViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    //var imageView = UIImage(named: "1_1")
    var imageView: [UIImage] = []//[UIImage(named: "1_1")!, UIImage(named: "1_3")!, UIImage(named: "1_5")!]
    var items = [Int]()//["1", "2", "3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
//                let show = Show()
//        
//                 print("2222222222222222222222222222222222222222222")
//                let shows = show.fetchShows()
//                 print("33333333333333333333333333333333333333333333333")
//                for show in shows {
//                    print("44444444444444444444")
//                    print("!!!!!!!!!!!!!!!!!")
//                    print(show.name!)
//                    print(show.logo!)
//                    self.imageView.append(UIImage(named: show.logo!)!)
//                }
//        
//        
    }
    
    

    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
        let show = Show()
        
        print("2222222222222222222222222222222222222222222")
        let shows = show.fetchShows()
        print("33333333333333333333333333333333333333333333333")
        for show in shows {
            print("44444444444444444444")
            print("!!!!!!!!!!!!!!!!!")
            print(show.name!)
            print(show.logo!)
            self.imageView.append(UIImage(named: show.logo!)!)
        }
        
        return self.imageView.count
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
