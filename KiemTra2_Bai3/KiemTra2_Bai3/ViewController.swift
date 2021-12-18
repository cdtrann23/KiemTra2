//
//  ViewController.swift
//  KiemTra2_Bai3
//
//  Created by Duy  Tran on 17/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    var ball = UIView()
    var f = CGRect()
    var a: Float = 0
    var b: Float = 0
    var c: Int = 0
    var d: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ball = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        ball.backgroundColor = .orange
        ball.layer.cornerRadius = ball.bounds.height/2

        self.view.addSubview(ball)

        self.a = Float(self.view.bounds.height)
        self.b = Float(self.ball.bounds.height)


//        self.f = self.self.ball.frame
//        self.f.origin.y = 240// new y
//        self.self.ball.frame = self.f
//
//        self.a = Float(self.view.bounds.height)
//        self.b = Float(self.ball.bounds.height + 240)


//        UIView.animateKeyframes(withDuration: 1, delay: 0, options: [ .autoreverse, .repeat]) { [self] in
//
//
//            self.ball.transform = CGAffineTransform(translationX: 0, y: CGFloat(self.a) - CGFloat(self.b))
//            self.ball.alpha = 1
//
//
//        }completion: { _ in
//            self.ball.transform = CGAffineTransform.identity
//            self.ball.alpha = 1
//        }
         
        while(c < 896){

            self.c += 80
            self.d += 80
            self.f = self.self.ball.frame
            self.f.origin.y = CGFloat(d)
            self.self.ball.frame = self.f

            print(CGFloat(d))

            self.a = Float(self.view.bounds.height)
            self.b = Float(self.ball.bounds.height + CGFloat(d))


            UIView.animateKeyframes(withDuration: 3, delay: 0, options: [ .autoreverse, .repeat]) { [self] in


                self.ball.transform = CGAffineTransform(translationX: 0, y: CGFloat(self.a) - CGFloat(self.b))
                self.ball.alpha = 1


            }completion: { _ in
                self.ball.transform = CGAffineTransform.identity
                self.ball.alpha = 1
            }

//            print("c = \(c)")
//            print("d = \(d)")

        }

        
        
        
        
    }


    
}

