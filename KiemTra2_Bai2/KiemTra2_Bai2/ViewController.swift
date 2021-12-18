//
//  ViewController.swift
//  KiemTra2_Bai2
//
//  Created by Duy  Tran on 18/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TG: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TG.backgroundColor = .orange
        TG.frame.size = CGSize(width: 1, height:   1)
        
        
        TG.VeTamGiac()
    }


}

extension UIView{
    func VeTamGiac(){
        
        let tgLayer = CAShapeLayer()
        let path = UIBezierPath()

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 200 , y: 0))
        path.addLine(to: CGPoint(x: 100, y: -173))

        tgLayer.path = path.cgPath
        tgLayer.fillColor = UIColor.orange.cgColor
        self.layer.addSublayer(tgLayer)
    }
}
