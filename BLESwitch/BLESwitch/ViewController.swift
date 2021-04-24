//
//  ViewController.swift
//  BLESwitch
//
//  Created by Christian Lorenzo on 4/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var uiSwitchOutlet: UISwitch!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Attempt to make a BLE connection:
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: "hasConnected", userInfo: nil, repeats: false)
        
        activityIndicator.startAnimating()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //Close BLE Connection if it exists:
    }
    
    @objc func hasConnected() {
        activityIndicator.stopAnimating()
        shadowView.isHidden = true
    }

    @IBAction func uiSwitchValueChanged(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Switch is ON")
        } else {
            print("Switch is OFF")
        }
    }
    
}

