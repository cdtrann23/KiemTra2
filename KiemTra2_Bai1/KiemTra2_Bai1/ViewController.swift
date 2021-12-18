//
//  ViewController.swift
//  KiemTra2_Bai1
//
//  Created by Duy  Tran on 17/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLable: UILabel!
    var timer: Timer?
    var sec: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timeLable.frame.size = CGSize(width: 50, height: 50)

    }

    @IBAction func getValue(_ sender: UISlider) {
        timeLable.text = "\(Int(sender.value))"
        sec = Int(sender.value)
    }
    
    
    @IBAction func buttonPress(_ sender: Any) {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.sec -= 1
            self.timeLable.text = "\(self.sec)"
            if self.sec == 0{
                self.timer?.invalidate()
            }
        })
    }
}

