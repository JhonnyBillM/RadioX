//
//  Radio.swift
//  RadioX
//
//  Created by Jhonny Bill Mena on 4/1/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit
import CoreData

class Radio: NSManagedObject {

    
//    init(){
//        
//    }


    
    
    //We will save all radio data only the first time the user launch the App
    
    func saveData(){
        
        let context = AppDelegate.viewContext
        let radio = NSEntityDescription.insertNewObject(forEntityName: "Radio", into: context)
        
        radio.setValue("01", forKeyPath: "radioID")
        radio.setValue("Radio Intec", forKeyPath: "name")
        radio.setValue("Santo Domingo, Intec", forKeyPath: "direction")
        radio.setValue("radio@intec.edu.do", forKeyPath: "eMail")
        radio.setValue("Radio Intec", forKeyPath: "facebook")
        radio.setValue("Radio Intec", forKeyPath: "instagram")
        radio.setValue("Radio Intec", forKeyPath: "phoneNumber")
        radio.setValue("Radio Intec", forKeyPath: "snapchat")
        radio.setValue("Radio Intec", forKeyPath: "twitter")
        
        do{
            try context.save()
        }catch{
            //bueeeeno
        }
        
    }
    
    func fetchRadioData(){
        
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Radio")
        
        do {
            
//            radio = try managedContext.fetch(fetchRequest)
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
        
    }
    
   
    
    
    
}
