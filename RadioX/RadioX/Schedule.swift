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
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        let startTime = formatter.date(from: "2017/04/10 11:00")
        let endTime = formatter.date(from: "2017/04/10 12:00")
        
        schedule.setValue(startTime, forKeyPath: "startTime")
        schedule.setValue(endTime, forKeyPath: "endTime")
        //        schedule.setValue("", forKeyPath: "descrip")
        
        
        
        ///////////////////////////////////
        //          GAMTEC ON AIR        //
        ///////////////////////////////////
        
        let schedule1 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule1.setValue(02, forKeyPath: "scheduleID")
        schedule1.setValue(02, forKeyPath: "showID")
        
        let formatter1 = DateFormatter()
        formatter1.dateFormat = "yyyy/MM/dd HH:mm"
        let startTime1 = formatter1.date(from: "2017/04/07 11:00")
        let endTime1 = formatter1.date(from: "2017/04/07 12:00")
        
        schedule1.setValue(startTime1, forKeyPath: "startTime")
        schedule1.setValue(endTime1, forKeyPath: "endTime")
        //        schedule1.setValue("", forKeyPath: "descrip")
        
        
        ///////////////////////////////////
        //         IGLU PERMANENTE       //
        ///////////////////////////////////
        
        let schedule2 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule2.setValue(03, forKeyPath: "scheduleID")
        schedule2.setValue(03, forKeyPath: "showID")
        
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "yyyy/MM/dd HH:mm"
        let startTime2 = formatter2.date(from: "2017/04/11 10:00")
        let endTime2 = formatter2.date(from: "2017/04/11 11:00")
        
        schedule2.setValue(startTime2, forKeyPath: "startTime")
        schedule2.setValue(endTime2, forKeyPath: "endTime")
        //        schedule2.setValue("", forKeyPath: "descrip")
        
        ///////////////////////////////////
        //       VOCES QUE EMPRENDEN     //
        ///////////////////////////////////
        
        let schedule3 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule3.setValue(04, forKeyPath: "scheduleID")
        schedule3.setValue(04, forKeyPath: "showID")
        
        let formatter3 = DateFormatter()
        formatter3.dateFormat = "yyyy/MM/dd HH:mm"
        let startTime3 = formatter3.date(from: "2017/04/12 14:00")
        let endTime3 = formatter3.date(from: "2017/04/12 15:00")
        
        schedule3.setValue(startTime3, forKeyPath: "startTime")
        schedule3.setValue(endTime3, forKeyPath: "endTime")
        //        schedule3.setValue("", forKeyPath: "descrip")
        
        
        ///////////////////////////////////
        //       INTEGRATE               //
        ///////////////////////////////////
        
        let schedule4 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule4.setValue(05, forKeyPath: "scheduleID")
        schedule4.setValue(05, forKeyPath: "showID")
        
        let formatter4 = DateFormatter()
        formatter4.dateFormat = "yyyy/MM/dd HH:mm"
        let startTime4 = formatter4.date(from: "2017/04/12 11:00")
        let endTime4 = formatter4.date(from: "2017/04/12 12:00")
        
        schedule4.setValue(startTime4, forKeyPath: "startTime")
        schedule4.setValue(endTime4, forKeyPath: "endTime")
        //        schedule4.setValue("", forKeyPath: "descrip")
        
        
        ///////////////////////////////////
        //LA CIENCIA DESDE LO PARTICULAR //
        ///////////////////////////////////
        
        let schedule5 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule5.setValue(06, forKeyPath: "scheduleID")
        schedule5.setValue(06, forKeyPath: "showID")
        
        let formatter5 = DateFormatter()
        formatter5.dateFormat = "yyyy/MM/dd HH:mm"
        let startTime5 = formatter5.date(from: "2017/04/08 22:31")
        let endTime5 = formatter5.date(from: "2017/04/08 22:31")
        
        schedule5.setValue(startTime5, forKeyPath: "startTime")
        schedule5.setValue(endTime5, forKeyPath: "endTime")
        //        schedule5.setValue("", forKeyPath: "descrip")
        
        ///////////////////////////////////
        //              MIRADAS          //
        ///////////////////////////////////
        
        let schedule6 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule6.setValue(07, forKeyPath: "scheduleID")
        schedule6.setValue(07, forKeyPath: "showID")
        
        let formatter6 = DateFormatter()
        formatter6.dateFormat = "yyyy/MM/dd HH:mm"
        let startTime6 = formatter6.date(from: "2016/10/08 22:31")
        let endTime6 = formatter6.date(from: "2016/10/08 22:31")
        
        schedule6.setValue(startTime6, forKeyPath: "startTime")
        schedule6.setValue(endTime6, forKeyPath: "endTime")
        
        //        schedule6.setValue("", forKeyPath: "startTime")
        //        schedule6.setValue("", forKeyPath: "endTime")
        //        schedule6.setValue("", forKeyPath: "descrip")
        
        ///////////////////////////////////
        //     DESDE EL CUADRILATERO     //
        ///////////////////////////////////
        
        let schedule7 = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context)
        
        schedule7.setValue(08, forKeyPath: "scheduleID")
        schedule7.setValue(08, forKeyPath: "showID")
        
        let formatter7 = DateFormatter()
        formatter7.dateFormat = "yyyy/MM/dd HH:mm"
        let startTime7 = formatter7.date(from: "2016/10/08 22:31")
        let endTime7 = formatter7.date(from: "2016/10/08 22:31")
        
        schedule7.setValue(startTime7, forKeyPath: "startTime")
        schedule7.setValue(endTime7, forKeyPath: "endTime")
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
