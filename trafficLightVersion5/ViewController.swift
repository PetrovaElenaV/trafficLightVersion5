//
//  ViewController.swift
//  trafficLightVersion5
//
//  Created by Elena Petrova on 27.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction func startTikTakButton() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        }
    }
}

