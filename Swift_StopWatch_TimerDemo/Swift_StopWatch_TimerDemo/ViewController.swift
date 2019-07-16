//
//  ViewController.swift
//  Swift_StopWatch_TimerDemo
//
//  Created by Apple on 24/05/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTimer: UILabel!
    @IBOutlet weak var btnStartOutlet: UIButton!
    @IBOutlet weak var btnStopOutlet: UIButton!
    
    var timer = Timer()
    var counter=0.0
    var isRunning=false

    override func viewDidLoad() {
        super.viewDidLoad()
       btnStartOutlet.isEnabled=true
        btnStopOutlet.isEnabled=false
        lblTimer.text="\(counter)"
    }


    @IBAction func btnReset(_ sender: UIButton) {
        btnStartOutlet.isEnabled=true
        btnStopOutlet.isEnabled=false
        timer.invalidate()
        counter=0.0
        lblTimer.text="0.0"
    }
    @IBAction func btnStart(_ sender: UIButton) {
        timer=Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo:nil, repeats: true)
        btnStartOutlet.isEnabled=false
        btnStopOutlet.isEnabled=true
        isRunning=true
    }
   @objc func UpdateTimer() {
        counter+=0.1
    lblTimer.text=String(format: "%.1f", counter)
    }
    @IBAction func btnStop(_ sender: UIButton) {
       
        
        timer.invalidate()
        
        btnStartOutlet.isEnabled=true
        btnStopOutlet.isEnabled=false
    isRunning=false
    }
}

