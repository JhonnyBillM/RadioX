//
//  RadioDataViewController.swift
//  RadioX
//
//  Created by Jhonny Bill Mena on 4/1/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit
import FaveButton

func color(_ rgbColor: Int) -> UIColor{
    return UIColor(
        red:   CGFloat((rgbColor & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbColor & 0x00FF00) >> 8 ) / 255.0,
        blue:  CGFloat((rgbColor & 0x0000FF) >> 0 ) / 255.0,
        alpha: CGFloat(1.0)
    )
}

class RadioDataViewController: UIViewController, FaveButtonDelegate{
    @IBOutlet weak var scroll: UIScrollView!

    var showToDetail = Show()
    
    @IBOutlet weak var headerImage: UIImageView!
    
    @IBOutlet weak var showNameLabel: UILabel!
    
    @IBOutlet weak var scheduleLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
   

    @IBOutlet weak var heartButton: FaveButton!
    
     let favInstance = FavShow()

    let colors = [
        DotColors(first: color(0x7DC2F4), second: color(0xE2264D)),
        DotColors(first: color(0xF8CC61), second: color(0x9BDFBA)),
        DotColors(first: color(0xAF90F4), second: color(0x90D1F9)),
        DotColors(first: color(0xE9A966), second: color(0xF8C852)),
        DotColors(first: color(0xF68FA7), second: color(0xF6A2B8))
    ]
    
    func faveButton(_ faveButton: FaveButton, didSelected selected: Bool){
        
        if(faveButton.isSelected){
            
            //mandar a guardar (en fav show con showid y userid) en la base de datos que ese show es favorito
            
            favInstance.addToFavorite(show: Int(showToDetail.showID))
            
        }else{
            
        }
        
    }
    
    func faveButtonDotColors(_ faveButton: FaveButton) -> [DotColors]?{
        if( faveButton === heartButton){
            return colors
        }
        return nil
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scroll)

        // Do any additional setup after loading the view.
        
        print("!!!!!!!!!!!! HEY !!!!!!!!!!")
        print(showToDetail.name!)
        
        headerImage.image = UIImage(named: showToDetail.logo!)
        showNameLabel.text = showToDetail.name!
        descriptionTextView.text = showToDetail.descrip!
        
        //Chequear en la BD si ese show es favorito, si lo es pongo el heart rojo, si no, gris
        
        
        
        if(favInstance.isFavorite(showID: Int(showToDetail.showID))){
            heartButton.normalColor = UIColor.red
        }else{
            heartButton.normalColor = UIColor.gray
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        scroll.contentSize = CGSize(width: 430, height: 800)
    }
    
    
    func tapped(show: Show){
        showToDetail = show
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
