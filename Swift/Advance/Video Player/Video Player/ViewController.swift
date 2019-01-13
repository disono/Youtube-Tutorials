//
//  ViewController.swift
//  Video Player
//
//  Created by Archie on 14/04/2018.
//  Copyright © 2018 Archie. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    @IBAction func btnWatchVideo(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }
    }
    
    @IBAction func btnPlayVideoURI(_ sender: Any) {
        let videoURI = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let video = AVPlayer(url: videoURI!)
        let videoPlayer = AVPlayerViewController()
        videoPlayer.player = video
        
        self.present(videoPlayer, animated: true) {
            videoPlayer.player!.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

