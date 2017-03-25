//
//  ContactViewController.swift
//  RadioX
//
//  Created by zelo on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var containerB: UIView!
    
    @IBOutlet weak var containerD: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showContainer(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.1, animations: {
                self.containerD.alpha = 1
                self.containerB.alpha = 0
            })
        } else {
            UIView.animate(withDuration: 0.1, animations: {
                self.containerD.alpha = 0
                self.containerB.alpha = 1
            })
        }
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
