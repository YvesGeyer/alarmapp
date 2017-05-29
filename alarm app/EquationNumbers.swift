//
//  EquationNumbers.swift
//  alarm app
//
//  Created by Yves Geyer on 5/14/17.
//  Copyright © 2017 Yves Geyer. All rights reserved.
//

import Foundation
import AVFoundation

//all the varibels 
private var _FirstNumber = Int(arc4random())

private var _SecondNumber = Int(arc4random())

private var _answer:Int = _FirstNumber + _SecondNumber

private var _soundAlarm = true

private var _currentHour = NSCalendar.current.component(.hour, from: NSDate() as Date)

private var _currentMinute = NSCalendar.current.component(.minute, from: NSDate() as Date)

private var _timeOfAlarm = [7,9]

private var _alarmStart = _timeOfAlarm[0]

private var _alarmEnd = _timeOfAlarm[1]

private var _btnSound: AVAudioPlayer!

var btnSound: AVAudioPlayer{
    get{
        return _btnSound
    }
    set{
        _btnSound = newValue
    }
}

var alarmStart: Int{
    get{
        return _alarmStart
    }
    set{
        _alarmStart = newValue
    }
}

var alarmEnd: Int{
    
    get{
        return _alarmEnd
    }
    set{
        _alarmEnd = newValue
    }
}

var timeOfAlarm: [Int]{
    get{
        return _timeOfAlarm
    }
    set{
        _timeOfAlarm = newValue
    }
}

var currentMinute: Int{
    get{
        return _currentMinute
    }
    set{
        _currentMinute = newValue
    }
}

var currentHour: Int{
    get{
        return _currentHour
    }
    set{
        _currentHour = newValue
    }
}
var soundAlarm: Bool{
    get{
        return _soundAlarm
    }
    set{
        _soundAlarm = newValue
    }
}

var FirstNumber:Int {
    get{
        return _FirstNumber
    }set{
        _FirstNumber = newValue
    }
}

var SecondNumber:Int{
    get{
        return _SecondNumber
    }
    set{
        _SecondNumber = newValue
    }
}

var answer:Int{
    get{
        return _answer
    }
    set{
        _answer = newValue
    }
}
