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
        
        let show = NSEntityDescription.insertNewObject(forEntityName: "Show", into: context)
        
        show.setValue(01, forKeyPath: "showID")
        show.setValue("Fuera de clase", forKeyPath: "name")
        
        show.setValue("Somos un programa de radio de estilos de vida, tratamos temas de la vida cotidiana desde una perspectiva diferente. Hablamos de cómo se supone que deben ocurrir las cosa en teoría y lo que sucede fuera de clase. Analizamos temas con bases científicas de una forma jovial, entretenida y ocurrente. Al final del día además de entretenerte aprenderás cosas nuevas y siempre podrás contar con un buen consejo pendejo.", forKeyPath: "descrip")
        show.setValue(4, forKeyPath: "rating")
        show.setValue(01, forKeyPath: "radioID")
        //Saving image
//        let img = UIImage(named: "1_1.png") //Use (e.g): fueraDeClase.png
//        let imgData = UIImageJPEGRepresentation(img!, 1)
        show.setValue("1_1", forKeyPath: "logo")
        
        
        ///////////////////////////////////
        //          GAMTEC ON AIR        //
        ///////////////////////////////////
        
        let show1 = NSEntityDescription.insertNewObject(forEntityName: "Show", into: context)
        
        
        show1.setValue(02, forKeyPath: "showID")
        show1.setValue("GAMTEC ON AIR", forKeyPath: "name")
        show1.setValue("¿Eres amante de la cultura anime, los video juegos y los últimos gadgets tecnológicos? ¡Si es así, este programa es para tí!   Conducido por un apasionado grupo de estudiantes del INTEC, Gamtec on Air se propone cada viernes sumergirte en un mundo mágico donde no solamente aprendes sino que te diviertes. ", forKeyPath: "descrip")
        show1.setValue(5, forKeyPath: "rating")
        show1.setValue(01, forKeyPath: "radioID")
        //Saving image
        //        let img = UIImage(named: "1_1.png") //Use (e.g): fueraDeClase.png
        //        let imgData = UIImageJPEGRepresentation(img!, 1)
        show1.setValue("1_1", forKeyPath: "logo")
        
        ///////////////////////////////////
        //         IGLU PERMANENTE       //
        ///////////////////////////////////
        
        let show2 = NSEntityDescription.insertNewObject(forEntityName: "Show", into: context)
        
        
        show2.setValue(03, forKeyPath: "showID")
        show2.setValue("IGLU PERMANENTE", forKeyPath: "name")
        show2.setValue("Un programa dedicado a difundir los avances en el liderazgo en educación superior. Conducido cada martes por el Prof. Miguel Escala. Entérate de las ultimas noticias, cambios e innovaciones en materia de educación superior así como también noticias de eventos, congresos de la dirección del OUI-IGLU con sede en el INTEC.", forKeyPath: "descrip")
        show2.setValue(5, forKeyPath: "rating")
        show2.setValue(01, forKeyPath: "radioID")
        //Saving image
        //        let img = UIImage(named: "1_1.png") //Use (e.g): fueraDeClase.png
        //        let imgData = UIImageJPEGRepresentation(img!, 1)
        show2.setValue("1_1", forKeyPath: "logo")

        
        ///////////////////////////////////
        //       VOCES QUE EMPRENDEN     //
        ///////////////////////////////////
        
        let show3 = NSEntityDescription.insertNewObject(forEntityName: "Show", into: context)
        
        
        show3.setValue(04, forKeyPath: "showID")
        show3.setValue("VOCES QUE EMPRENDEN", forKeyPath: "name")
        show3.setValue("En un programa dedicado a promover las experiencias de emprededores éxitosos y con carreras nacientes, motivando al publico oyente a lanzarse a tomar diferentes caminos y propiamente dicho a emprender con los tips que se suministran en el programa.", forKeyPath: "descrip")
        show3.setValue(4, forKeyPath: "rating")
        show3.setValue(01, forKeyPath: "radioID")
        //Saving image
        //        let img = UIImage(named: "1_1.png") //Use (e.g): fueraDeClase.png
        //        let imgData = UIImageJPEGRepresentation(img!, 1)
        show3.setValue("1_3", forKeyPath: "logo")
        
        
        ///////////////////////////////////
        //       INTEGRATE               //
        ///////////////////////////////////
        
        let show4 = NSEntityDescription.insertNewObject(forEntityName: "Show", into: context)
        
        
        show4.setValue(05, forKeyPath: "showID")
        show4.setValue("INTEGRATE", forKeyPath: "name")
        show4.setValue("Integrate es un programa donde todos los miembros de la comunidad estudiantil pueden encontrar refugio para tratar temas sociales y academicos de forma relajada y con información de calidad.", forKeyPath: "descrip")
        show4.setValue(4, forKeyPath: "rating")
        show4.setValue(01, forKeyPath: "radioID")
        //Saving image
        //        let img = UIImage(named: "1_1.png") //Use (e.g): fueraDeClase.png
        //        let imgData = UIImageJPEGRepresentation(img!, 1)
        show4.setValue("1_1", forKeyPath: "logo")
        
        ///////////////////////////////////
        //LA CIENCIA DESDE LO PARTICULAR //
        ///////////////////////////////////
        
        let show5 = NSEntityDescription.insertNewObject(forEntityName: "Show", into: context)
        
        
        show5.setValue(06, forKeyPath: "showID")
        show5.setValue("LA CIENCIA DESDE LO PARTICULAR", forKeyPath: "name")
        show5.setValue("La Ciencia desde lo Particular es un proyecto complementario que surge con el interés de difundir las investigaciones que cada trimestre se presentan a través del Seminario “La Ciencia desde lo Particular” realizadas por los/as estudiantes de la Carrera de Psicología del INTEC cada trimestre. Así también, comentar temas que sean de interés profesional.", forKeyPath: "descrip")
        show5.setValue(5, forKeyPath: "rating")
        show5.setValue(01, forKeyPath: "radioID")
        //Saving image
        //        let img = UIImage(named: "1_1.png") //Use (e.g): fueraDeClase.png
        //        let imgData = UIImageJPEGRepresentation(img!, 1)
        show5.setValue("1_5", forKeyPath: "logo")
        
        ///////////////////////////////////
        //              MIRADAS          //
        ///////////////////////////////////
        
        let show6 = NSEntityDescription.insertNewObject(forEntityName: "Show", into: context)
        
        
        show6.setValue(07, forKeyPath: "showID")
        show6.setValue("MIRADAS", forKeyPath: "name")
        show6.setValue("El centro de estudio de género del INTEC (CEG-INTEC) presenta cada viernes su programa Miradas, volcado hacia una mejor educación en temas de género.", forKeyPath: "descrip")
        show6.setValue(5, forKeyPath: "rating")
        show6.setValue(01, forKeyPath: "radioID")
        //Saving image
        //        let img = UIImage(named: "1_1.png") //Use (e.g): fueraDeClase.png
        //        let imgData = UIImageJPEGRepresentation(img!, 1)
        show6.setValue("1_1", forKeyPath: "logo")
        
        ///////////////////////////////////
        //     DESDE EL CUADRILATERO     //
        ///////////////////////////////////
        
        let show7 = NSEntityDescription.insertNewObject(forEntityName: "Show", into: context)
        
        
        show7.setValue(07, forKeyPath: "showID")
        show7.setValue("DESDE EL CUADRILATERO", forKeyPath: "name")
        show7.setValue("Todo el suceso en el Ring lo traemos a ti! Desde el Cuadrilatero. Programa orientado a los deportes de contacto y a la actividad deportiva en general.", forKeyPath: "descrip")
        show7.setValue(5, forKeyPath: "rating")
        show7.setValue(01, forKeyPath: "radioID")
        //Saving image
        //        let img = UIImage(named: "1_1.png") //Use (e.g): fueraDeClase.png
        //        let imgData = UIImageJPEGRepresentation(img!, 1)
        show7.setValue("1_1", forKeyPath: "logo")
        
        
        
        
        
        ///////////////////////////////////
        //          Saving data          //
        ///////////////////////////////////
        
        
        do{
            print("!!!!!!!!!!!!!!!!!!!    SAVED   !!!!!!!!!!!!!!!!!!!!!!")
            try context.save()
        }catch{
            //bueeeeno
        }
        
        
        
    }
    
    
    
    
    
    ///////////////////////////////////
    //          Fetch Data           //
    ///////////////////////////////////
    
//    func fetchShowsImages()/* ->[UIImage] */ {
//        
//        let shows = fetchShows()
//        var images: [UIImage] = []
//        
//        for show in shows {
//            }
//        
//    }
//    
    func fetchShows() -> [Show] {
        
        var shows = [Show]()
        
        let fetchRequest:NSFetchRequest<Show> = Show.fetchRequest()
        
        do{
            
            let searchResult = try AppDelegate.viewContext.fetch(fetchRequest)
            
//            for show in searchResult {
//                shows.append(show)
//            }
            return searchResult
            
        }catch{
            //Bueh
        }
        
        return shows
        
    }
    
    

}
