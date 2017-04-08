//
//  TimerViewController.swift
//  RadioX
//
//  Created by fitmap on 4/7/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    
    var timerValue: TimeInterval = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func timeChanged(_ sender: Any) {
        guard let datePicker = sender as? UIDatePicker else {
            return
        }
        
        print("!!!!!!!!!!!!!!!!!!")
        timerValue = datePicker.countDownDuration
        print(datePicker.countDownDuration)
    }
    
    @IBAction func setTimer(_ sender: Any) {
        
        
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
