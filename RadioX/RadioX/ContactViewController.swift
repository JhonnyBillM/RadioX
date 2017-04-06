//
//  ContactViewController.swift
//  RadioX
//
//  Created by zelo on 3/25/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit
import MessageUI

class ContactViewController: UIViewController, MFMailComposeViewControllerDelegate {

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
        scroller.contentSize = CGSize(width: 430, height: 830)
    }
    

    @IBAction func sendEmail(_ sender: Any) {
        let mail = MFMailComposeViewController()
        mail.mailComposeDelegate = self
        mail.setToRecipients(["lareenmmelo@gmail.com"])
        mail.setMessageBody("hiiiii", isHTML: false)
        
        if MFMailComposeViewController.canSendMail()
        {
            self.present(mail, animated: true, completion: nil)
        }else{
            print("cry")
        }
        
    }
   
    
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult, error: Error?) {
        // Check the result or perform other tasks.
        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
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
