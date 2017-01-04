//
//  ViewController.swift
//  AnimationSample001
//
//  Created by hirauchi.shinichi on 2017/01/04.
//  Copyright © 2017年 SAPPOROWORKS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelHelloWorld: UILabel!
    
    @IBOutlet weak var labelSecoundMessage: UILabel!
    
    @IBOutlet weak var labelNextAction: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        labelHelloWorld.center.y -= view.bounds.height
        labelSecoundMessage.alpha = 0
        labelNextAction.alpha = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //labelHelloWorld.alpha = 0
        

        UIView.animate(withDuration: 1.0, animations: {
                self.labelHelloWorld.center.y += self.view.bounds.height
            }, completion: { finished in
                self.secondAnimation()
            })

        
        UIView.animate(withDuration: 1.0, delay: 0.5, options:[], animations: {
                self.view.backgroundColor = UIColor.green
        }, completion: { finished in
            self.backgroundColor()
        })

    }
    func secondAnimation() {
        
        labelSecoundMessage.center.y += view.bounds.height
        labelSecoundMessage.alpha = 1.0
        //animate second label
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: { () -> Void in
            
            self.labelSecoundMessage.center.y -= self.view.bounds.height
            
        }, completion: nil)
        
    }
    
    
    func backgroundColor() {
        
        UIView.animate(withDuration: 2.5, animations: {
            self.view.backgroundColor = UIColor.black
            
        }, completion:nil)
        
        UIView.animate(withDuration: 1.0, delay: 1.5, options: [], animations: {
            self.labelNextAction.alpha = 1.0
            
        }, completion:nil)
        
    }

    
    
//    func animation(){
//        UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: { () -> Void in
//            self.labelSecoundMessage.center.y -= self.view.bounds.height
//        }, completion: nil)
//    }
    

    @IBAction func tapButton(_ sender: Any) {
        labelHelloWorld.center.y -= self.view.bounds.height
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

