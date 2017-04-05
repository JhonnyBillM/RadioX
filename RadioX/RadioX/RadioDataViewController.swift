//
//  RadioDataViewController.swift
//  RadioX
//
//  Created by Jhonny Bill Mena on 4/1/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit


class RadioDataViewController: UIViewController {

    var showToDetail = Show()
    
    @IBOutlet weak var headerImage: UIImageView!
    
    @IBOutlet weak var showNameLabel: UILabel!
    
    @IBOutlet weak var scheduleLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print("!!!!!!!!!!!! HEY !!!!!!!!!!")
        print(showToDetail.name!)
        
        headerImage.image = UIImage(named: showToDetail.logo!)
        showNameLabel.text = showToDetail.name!
        descriptionTextView.text = showToDetail.descrip!
        
        
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
