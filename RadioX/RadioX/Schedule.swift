//
//  Schedule.swift
//  RadioX
//
//  Created by Jhonny Bill Mena on 4/1/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit
import CoreData

class Schedule: NSManagedObject {

    
    func saveData(){
        
        let context = AppDelegate.viewContext
        ///////OJO!!!!!
        //Date format
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy/MM/dd HH:mm"
//        let someDateTime = formatter.date(from: "2016/10/08 22:31")

        
        ///////////////////////////////////
        //       Fuera de clase          //
        ///////////////////////////////////
        
        let schedule = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule.setValue(01, forKeyPath: "scheduleID")
        schedule.setValue(01, forKeyPath: "showID")
        
        
//        schedule.setValue("", forKeyPath: "startTime")
//        schedule.setValue("", forKeyPath: "endTime")
//        schedule.setValue("", forKeyPath: "descrip")
        
        
    
        ///////////////////////////////////
        //          GAMTEC ON AIR        //
        ///////////////////////////////////
        
        let schedule1 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule1.setValue(02, forKeyPath: "scheduleID")
        schedule1.setValue(02, forKeyPath: "showID")
        //        schedule1.setValue("", forKeyPath: "startTime")
        //        schedule1.setValue("", forKeyPath: "endTime")
        //        schedule1.setValue("", forKeyPath: "descrip")
        
      
        ///////////////////////////////////
        //         IGLU PERMANENTE       //
        ///////////////////////////////////
        
        let schedule2 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule2.setValue(03, forKeyPath: "scheduleID")
        schedule2.setValue(03, forKeyPath: "showID")
        //        schedule2.setValue("", forKeyPath: "startTime")
        //        schedule2.setValue("", forKeyPath: "endTime")
        //        schedule2.setValue("", forKeyPath: "descrip")
        
        ///////////////////////////////////
        //       VOCES QUE EMPRENDEN     //
        ///////////////////////////////////
        
        let schedule3 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule3.setValue(04, forKeyPath: "scheduleID")
        schedule3.setValue(04, forKeyPath: "showID")
        //        schedule3.setValue("", forKeyPath: "startTime")
        //        schedule3.setValue("", forKeyPath: "endTime")
        //        schedule3.setValue("", forKeyPath: "descrip")
        
        
        ///////////////////////////////////
        //       INTEGRATE               //
        ///////////////////////////////////
        
        let schedule4 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule4.setValue(05, forKeyPath: "scheduleID")
        schedule4.setValue(05, forKeyPath: "showID")
        //        schedule4.setValue("", forKeyPath: "startTime")
        //        schedule4.setValue("", forKeyPath: "endTime")
        //        schedule4.setValue("", forKeyPath: "descrip")
        
        
        ///////////////////////////////////
        //LA CIENCIA DESDE LO PARTICULAR //
        ///////////////////////////////////
        
        let schedule5 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule5.setValue(06, forKeyPath: "scheduleID")
        schedule5.setValue(06, forKeyPath: "showID")
        //        schedule5.setValue("", forKeyPath: "startTime")
        //        schedule5.setValue("", forKeyPath: "endTime")
        //        schedule5.setValue("", forKeyPath: "descrip")
        
        ///////////////////////////////////
        //              MIRADAS          //
        ///////////////////////////////////
        
        let schedule6 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule6.setValue(07, forKeyPath: "scheduleID")
        schedule6.setValue(07, forKeyPath: "showID")
        //        schedule6.setValue("", forKeyPath: "startTime")
        //        schedule6.setValue("", forKeyPath: "endTime")
        //        schedule6.setValue("", forKeyPath: "descrip")
        
        ///////////////////////////////////
        //     DESDE EL CUADRILATERO     //
        ///////////////////////////////////
        
        let schedule7 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule7.setValue(08, forKeyPath: "scheduleID")
        schedule7.setValue(08, forKeyPath: "showID")
        //        schedule7.setValue("", forKeyPath: "startTime")
        //        schedule7.setValue("", forKeyPath: "endTime")
        //        schedule7.setValue("", forKeyPath: "descrip")
        
        
        
        
        
        
        ///////////////////////////////////
        //          Saving data          //
        ///////////////////////////////////
        
        
        do{
            try context.save()
        }catch{
            //bueeeeno
        }
        
        
    }
    
    
    
    ///////////////////////////////////
    //          Fetch Data           //
    ///////////////////////////////////
    
    func fetchRadioData(){
        
        let fetchRequest:NSFetchRequest<Schedule> = Schedule.fetchRequest()
        
        do{
            
            let searchResult = try AppDelegate.viewContext.fetch(fetchRequest)
            
            for schedule in searchResult {
                print("HEEEEEEEEEEEEEEEEEEY")
                print(schedule.showID)
            }
            
        }catch{
            
        }
        
    }

    
    
}
