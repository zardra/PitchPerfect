//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Liz Borchardt on 2/10/16.
//  Copyright © 2016 Elizabeth Borchardt. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    @IBOutlet weak var recordingText: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
        recordButton.enabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(sender: UIButton) {
        recordingText.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
        //TODO: Record user's voice
        
        print("in recordAudio")
    }
    
    @IBAction func stopRecording(sender: UIButton) {
        recordingText.hidden = true
    }
    
}

