//
//  ViewController.swift
//  alarm app
//
//  Created by Yves Geyer on 5/14/17.
//  Copyright © 2017 Yves Geyer. All rights reserved.
//

import UIKit

class AlarmVC: UIViewController {

    @IBOutlet weak var testImage: UIImageView!
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var firstNumber: UILabel!
    @IBAction func answerCheck(_ sender: Any) {
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        firstNumber.text = "\(FirstNumber)"
        
        secondNumber.text = "\(SecondNumber)"
        //print(FirstNumber)
        //print(SecondNumber)
       
        
    }


}

