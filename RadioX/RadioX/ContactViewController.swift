//
//  ContactViewController.swift
//  RadioX
//
//  Created by zelo on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scroller: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scroller)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        scroller.contentSize = CGSize(width: 375, height: 800)
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
