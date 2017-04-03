//
//  Show.swift
//  RadioX
//
//  Created by Jhonny Bill Mena on 4/1/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit
import CoreData

class Show: NSManagedObject {
    
    
    func saveData(){
        

        let context = AppDelegate.viewContext
        
        ///////////////////////////////////
        //       Fuera de clase          //
        ///////////////////////////////////
        
        let show = NSEntityDescription.insertNewObject(forEntityName: "Radio", into: context)
        
        show.setValue(01, forKeyPath: "showID")
        show.setValue("Fuera de clase", forKeyPath: "name")
        
        show.setValue("Somos un programa de radio de estilos de vida, tratamos temas de la vida cotidiana desde una perspectiva diferente. Hablamos de cómo se supone que deben ocurrir las cosa en teoría y lo que sucede fuera de clase. Analizamos temas con bases científicas de una forma jovial, entretenida y ocurrente. Al final del día además de entretenerte aprenderás cosas nuevas y siempre podrás contar con un buen consejo pendejo.", forKeyPath: "descrip")
        show.setValue(4, forKeyPath: "rating")
        show.setValue(01, forKeyPath: "radioID")
        
        //Saving image
        let img = UIImage(named: "fueraDeClase.png")
        let imgData = UIImageJPEGRepresentation(img!, 1)
        show.setValue(imgData, forKey: "logo")
        
        
//        ///////////////////////////////////
//        //                               //
//        ///////////////////////////////////
//        
//        let show1 = NSEntityDescription.insertNewObject(forEntityName: "Radio", into: context)
//        
//        
//        show1.setValue("", forKeyPath: "showID")
//        show1.setValue("", forKeyPath: "name")
//        show1.setValue("", forKeyPath: "descrip")
//        show1.setValue("", forKeyPath: "rating")
//        show1.setValue("", forKeyPath: "logo")
//        show1.setValue("", forKeyPath: "radioID")
//        
//        ///////////////////////////////////
//        //                               //
//        ///////////////////////////////////
//        
//        let show2 = NSEntityDescription.insertNewObject(forEntityName: "Radio", into: context)
//        
//        
//        show1.setValue("", forKeyPath: "showID")
//        show1.setValue("", forKeyPath: "name")
//        show1.setValue("", forKeyPath: "descrip")
//        show1.setValue("", forKeyPath: "rating")
//        show1.setValue("", forKeyPath: "logo")
//        show1.setValue("", forKeyPath: "radioID")
//        
//        ///////////////////////////////////
//        //                               //
//        ///////////////////////////////////
//        
//        let show3 = NSEntityDescription.insertNewObject(forEntityName: "Radio", into: context)
//        
//        
//        show1.setValue("", forKeyPath: "showID")
//        show1.setValue("", forKeyPath: "name")
//        show1.setValue("", forKeyPath: "descrip")
//        show1.setValue("", forKeyPath: "rating")
//        show1.setValue("", forKeyPath: "logo")
//        show1.setValue("", forKeyPath: "radioID")
//        
//        ///////////////////////////////////
//        //                               //
//        ///////////////////////////////////
//        
//        let show4 = NSEntityDescription.insertNewObject(forEntityName: "Radio", into: context)
//        
//        
//        show1.setValue("", forKeyPath: "showID")
//        show1.setValue("", forKeyPath: "name")
//        show1.setValue("", forKeyPath: "descrip")
//        show1.setValue("", forKeyPath: "rating")
//        show1.setValue("", forKeyPath: "logo")
//        show1.setValue("", forKeyPath: "radioID")
//        
//        ///////////////////////////////////
//        //                               //
//        ///////////////////////////////////
//        
//        let show5 = NSEntityDescription.insertNewObject(forEntityName: "Radio", into: context)
//        
//        
//        show1.setValue("", forKeyPath: "showID")
//        show1.setValue("", forKeyPath: "name")
//        show1.setValue("", forKeyPath: "descrip")
//        show1.setValue("", forKeyPath: "rating")
//        show1.setValue("", forKeyPath: "logo")
//        show1.setValue("", forKeyPath: "radioID")
//        
//        
        
        
        
        
        do{
            try context.save()
        }catch{
            //bueeeeno
        }
        
        
        
    }
    
    
    func fetchRadioData(){
       
        let fetchRequest:NSFetchRequest<Show> = Show.fetchRequest()
        
        do{
            
            let searchResult = try AppDelegate.viewContext.fetch(fetchRequest)
            
            for show in searchResult {
                
            }
            
        }catch{
            
        }
        
    }

}
