//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Liz Borchardt on 2/11/16.
//  Copyright © 2016 Elizabeth Borchardt. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    var receivedAudio: RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            let fileURL = NSURL.fileURLWithPath(filePath)
//            
//        } else {
//            print("The file path is empty")
//        }
        
        audioPlayer = try! AVAudioPlayer(contentsOfURL: receivedAudio.filePathURL)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func startPlayBack() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }

    @IBAction func stopPlayBack(sender: UIButton) {
        audioPlayer.stop()
    }
    
    @IBAction func playSlowAudio(sender: UIButton) {
        // Play audio slowly...
        audioPlayer.rate = 0.5
        self.startPlayBack()
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        audioPlayer.rate = 2.0
        self.startPlayBack()
    }
}
