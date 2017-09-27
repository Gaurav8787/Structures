//: Playground - noun: a place where people can play

import UIKit

let mydetails = ["name":"gaurav","eyes_color":"black","hair_color":"brown"]
let abcdetails = ["name":"abc","eyes_color":"yellow","hair_color":"red"]
let xyzdetails = ["name":"xyz","eyes_color":"green","hair_color":"white"]

struct profile {
    var name:String
    var age:String
    var education:String
    
    func sayyourinfo() {
        print("my name is \(self.name) and I am \(age) years old.")
    }
}

let myprofile = profile(name: "gaurav", age: "5", education: "ddd")
let abcprofile = profile(name: "abc", age: "23", education: "dddf")
let xyzprofile = profile(name: "xyz", age: "33", education: "kuku")

myprofile.name
abcprofile.name
xyzprofile.name

myprofile.sayyourinfo()
abcprofile.sayyourinfo()

struct sum {
    var x:Int
    var y:Int
    // computed property
    var sumX:Int {
        return x + y
    }
    
}

let mysum = sum(x: 5, y: 7)
mysum.sumX
print(mysum.sumX)








