//
//  changeSettings.swift
//  alarm app
//
//  Created by Yves Geyer on 5/26/17.
//  Copyright © 2017 Yves Geyer. All rights reserved.
//

import UIKit
import AVFoundation

class changeSettings: UIViewController {

    
    @IBOutlet weak var endTimeTextfield: UITextField!
    @IBOutlet weak var startTimeTextfield: UITextField!
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeTimesButton(_ sender: Any) {
        changeAlarmTime()
        playAlarm()
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
           }

    
    func changeAlarmTime (){//function to change the time
        
        let timeEnd:Int? = Int(endTimeTextfield.text!)
        let timestart:Int? = Int(startTimeTextfield.text!)
        if "\(endTimeTextfield)" != "" && self.endTimeTextfield != nil {
            
                alarmEnd = (timeEnd)!
                print("\(alarmEnd)")
            
            
        }else{
            print("nope")
        }
        
        if "\(startTimeTextfield)" != ""  && self.startTimeTextfield != nil {
            
                
            
            alarmStart = timestart!
            print("\(alarmStart)")
            
            
        }else{
            print("nope")
        }
    }

    
    func playAlarm (){
        if soundAlarm == true{
            if currentHour <= alarmEnd {
                if currentHour >= alarmStart{
                    playSound()
                    //print(soundAlarm)
                }
                
            }
            
        }else{
            
            //print(soundAlarm)
        }
        
        if soundAlarm == false {
            if currentHour >= alarmEnd {
                soundAlarm = true
            }
            //print(soundAlarm)
        }else {
            
            //print(soundAlarm)
        }

    }

    func playSound() {//function for playing the sound
        
        if btnSound.isPlaying{
            btnSound.stop()
        }
        
        btnSound.play()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}















