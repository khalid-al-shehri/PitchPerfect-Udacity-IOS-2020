//
//  ViewController.swift
//  PitchPerfect2
//
//  Created by khaled alshehri on 02/09/1441 AH.
//  Copyright © 1441 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        recordLabel.text = "Recording in progress"
        stopRecordButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    
    @IBAction func stopRecord(_ sender: Any) {
        recordLabel.text = "Recording is stopped"
        stopRecordButton.isEnabled = false
        recordButton.isEnabled = true
    }
    
    
}

