//
//  ViewController.swift
//  Structures
//
//  Created by Gaurav on 26/09/17.
//  Copyright © 2017 Gaurav. All rights reserved.
//

import UIKit

 @objc protocol tcpprotocol {
    //optional
    @objc optional func hello(no1: Int)
   // func newhello(no1: Int)
}





enum Calendars {
    case Jan
    case Feb
    case March
    case result(Int,Int)
    case Name(String)
    
    func enumFunction () -> Int {
        return -17
    }
    
}

enum Months:Int {
    case Jan = 5, Feb,March
}




struct marksStruct {
    var marks1:Int
    var marks2:Int
    var marks3:Int
    
    init(marks1:Int,marks2:Int,marks3:Int) {
        self.marks1 = marks1
        self.marks2 = marks2
        self.marks3 = marks3
    }
    
}

class ViewController: UIViewController, tcpprotocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        // protocol
        func hello(no1: Int) {
           print(no1)
        }
        
        hello(no1: 777)
        
        
        
        
        
        
        
        // generics
        func logInt(x:Int) {
            print(x)
        }
        
        logInt(x: 44)
        
        func log<ToBeLogged>(x: ToBeLogged) {
            print(x)
        }
        
        log(x: 1)
        log(x: "hello")
        
        
        
        
        // clouser
        let studname = { print("Welcome to Swift Closures") }
        studname()
        
        let divide = {(val1: Int, val2: Int) -> Int in
            return val1 / val2
        }
        let result = divide(200, 20)
        print(result)
        
        
        // function with pRmeters names
        //  internal-externals are same ==  parameter name
        func simple(i: Int, j: Int) {
            print("i=\(i) j=\(j)")
        }
        
        simple(i: 4, j: 5)
    
        // external parameter and internal parameter name
        func notsimple(firstParam i:Int, secondParam j:Int) {
            print("i = /(i)...j = /(j)")
        }
        
        notsimple(firstParam: 5, secondParam: 22)
        
        
    
        
        
        // _ use in function
        func myFunc(_ name:String, _ age:String){
            print("dfvd \(name) .. \(age)")
        }
        
        func mySecondFunc(_ name:String, age:String){
            print("dfvd \(name) .. \(age)")
        }

        myFunc("Milo", "I'm a really old wizard")
        mySecondFunc("Milo", age: "I'm a really old wizard")
        
        // computed property as observer
        var counter:Int = 1 {
            willSet(newTotal) {
                print("initial value")
            }
            didSet{
                if counter > 10 {
                    print("more then 10")
                }
            }
        }

       counter = 6
       counter = 12
        
        
        
    
        // Structure
        let myStruct = marksStruct(marks1: 2, marks2: 3, marks3: 5)
        print(myStruct.marks1)
        print(myStruct.marks2)
        print(myStruct.marks3)
        
        // enumuration
        print(Calendars.Name("dd").enumFunction())
        
         print(Calendars.Jan.enumFunction())
        
        var months = Calendars.Jan
        months = .Jan
        
        switch months {
        case .Jan:
            print("jan")
            
        case .Feb:
            print("feb")
            
        default:
            print("break")
            
        }
        
        // enumaration classified in associated and raw values
        // enumartion with associated values
        let result2 = Calendars.result(5, 6)
        
        switch result2 {
        case .result(let number1, let number2):
            print(number1,number2)
            
        default:
            break
        }
        
        let yrname = Calendars.Name("abc")
        print(yrname)
        
        
        // enumaration with raw values
        let rawvl = Months.March.rawValue
        print(rawvl)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

