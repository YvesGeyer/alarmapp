//
//  AlamrVC.swift
//  alarm app
//
//  Created by Yves Geyer on 5/14/17.
//  Copyright © 2017 Yves Geyer. All rights reserved.
//

import UIKit
import AVFoundation

class AlamrVC: UIViewController {

    
    @IBOutlet weak var answerBox: UITextField!
   
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var firstNumber: UILabel!
    @IBAction func answerCheck(_ sender: Any) {
        print(answerBox.text!)
        if self.answerBox.text == "\(answer)"{
            
            soundAlarm = false
        }else{
            
            playSound()
            soundAlarm = true
        }
        print(soundAlarm)
    }

    
    var btnSound: AVAudioPlayer!
    
    //let date = NSDate()
    //let calendar = NSCalendar.current
    //let hour = NSCalendar.current.component(.hour, from: NSDate() as Date)
    //let minute = NSCalendar.current.component(.minute, from: NSDate() as Date)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNumber.text = "\(FirstNumber)"
        
        secondNumber.text = "\(SecondNumber)"//sets the words on the app to the numbers generated.
        //print(FirstNumber)
        //print(SecondNumber)
        
           
        
        print(answer)
//        print(currentHour)
//        print(currentMinute)
        print(soundAlarm)
        
        //sets up the sound that plays on the app
        let path = Bundle.main.path(forResource:  "Wake-up-sounds", ofType: "mp3")//sets up aduio ready to play by maiking file file a url LOOK AT FILES FOR THE RED TEXT
        let soundURL = URL(fileURLWithPath: path!) // this turns the path into url which is needed to play sound, the exclamation mark unwraps the path.
        
        do{
            try btnSound = AVAudioPlayer(contentsOf:  soundURL) // Program trys to ply sound but if it fail the catch porsion happens.
            btnSound.prepareToPlay()
            
        }catch let err as NSError{
            
            print(err.debugDescription)// puts error in debug place.
            
        }
        while soundAlarm == true{
            
            //checks if to sound alarm and it the right time then sounds alamer else it prints something.
                if soundAlarm == true && currentHour < 9 && currentHour > 7{
                    playSound()
                    print(soundAlarm)
                }else{
                    print(soundAlarm)
                }
                
                }
                
        
        
        //checks if the alarm should not sound and when to sound it.
    while soundAlarm == false{
            if soundAlarm == false && currentHour > 9{
                soundAlarm = true
                print(soundAlarm)
            }else{
                print(soundAlarm)
            }
        }

    }
    
    
    func playSound() {//function for playing the sound
        
        if btnSound.isPlaying{
            btnSound.stop()
        }
        
        btnSound.play()
        
    }
    

}




