//
//  StreamingViewController.swift
//  RadioX
//
//  Created by fitmap on 3/23/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import UIKit

class StreamingViewController: UIViewController {

    
    @IBOutlet weak var playButton: UIButton!
    
    
    @IBOutlet weak var frontImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = UIColor.black
        // Do any additional setup after loading the view.
        frontImage.image = UIImage(named: "RadioIntecLogo")
   
    }

    
   
    
   
    
    
    
    @IBAction func playButton(_ sender: UIButton) {
        
        toggle()
        
    }
    
    func toggle(){
        
        if Streaming.sharedInstance.currentlyPlaying() {
            pauseStreaming()
        }else{
            startStreaming()
        }
        
    }
    
    func startStreaming(){
        Streaming.sharedInstance.play()
        //Update the button icon
    }
    
    func pauseStreaming(){
        Streaming.sharedInstance.pause()
        //Update the button icon
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
