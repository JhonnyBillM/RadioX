//
//  Streaming.swift
//  RadioX
//
//  Created by fitmap on 3/31/17.
//  Copyright © 2017 gestionadoresDiscretos. All rights reserved.
//

import Foundation
import AVFoundation

class Streaming {
    
    static let sharedInstance = Streaming()
    private var player = AVPlayer(url: NSURL(string: "http://soluzone.net:9992/;&type=mp3")! as URL)
    private var isPlaying = false
    
    func play() {
        player.play()
        isPlaying = true
    }
    
    func pause() {
        player.pause()
        isPlaying = false
    }
    
    func toggle() {
        if isPlaying == true {
            pause()
        } else {
            play()
        }
    }
    
    func currentlyPlaying() -> Bool {
        return isPlaying
    }
}
    

